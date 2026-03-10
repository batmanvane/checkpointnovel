#!/usr/bin/env python3
"""Generate static SVG cover art — convergence + wake pattern."""
import math
import random
import sys
import os

def seeded_random(seed):
    r = random.Random(seed)
    return r.random

def generate_cover(width=600, height=900, small=False):
    """Generate the convergence-wake cover as static SVG."""
    num_lines = 50
    start_y = 220
    converge_y = 540
    end_y = 850
    steps_converge = 150
    steps_wake = 120

    lines_svg = []
    wake_svg = []

    # Generate convergence lines
    for i in range(num_lines):
        rng = seeded_random(i * 137 + 42)
        start_x = 40 + (i / num_lines) * 520
        points = []

        # Phase 1: Converge
        for s in range(steps_converge + 1):
            t = s / steps_converge
            y = start_y + t * (converge_y - start_y)
            target = 300
            pull = t * t * t
            x = start_x + (target - start_x) * pull
            noise = (rng() - 0.5) * 18 * (1 - t)
            x += noise
            points.append((x, y))

        # Phase 2: Wake
        exit_angle = (rng() - 0.5) * math.pi * 0.8
        speed = 0.3 + rng() * 0.7
        wave_freq = 2 + rng() * 4
        wave_amp = 1 + rng() * 8

        for s in range(1, steps_wake + 1):
            t = s / steps_wake
            y = converge_y + t * (end_y - converge_y)
            spread = math.sin(exit_angle) * t * t * 250 * speed
            wave = math.sin(t * wave_freq * math.pi * 2) * wave_amp * t
            x = 300 + spread + wave
            points.append((x, y))

        pts_str = ' '.join(f'{p[0]:.1f},{p[1]:.1f}' for p in points)
        hue = (start_x / 600) * 40 + 20
        opacity = 0.3 + rng() * 0.35
        lines_svg.append(
            f'<polyline points="{pts_str}" fill="none" '
            f'stroke="hsl({hue:.0f},50%,65%)" stroke-width="0.9" '
            f'opacity="{opacity:.2f}"/>'
        )

    # Generate wake ripples
    for row in range(12):
        y = converge_y + 30 + row * 25
        opacity = 0.08 + (row / 12) * 0.12
        amplitude = 2 + row * 1.5
        freq = 0.015 - row * 0.0005
        d = f'M 40,{y}'
        for x in range(40, 561, 4):
            dist = abs(x - 300)
            envelope = math.exp(-dist * dist / (8000 + row * 2000))
            wave = math.sin((x - 300) * freq * (15 - row * 0.5) + row * 0.7) * amplitude * envelope
            d += f' L {x},{y + wave:.1f}'
        wake_svg.append(
            f'<path d="{d}" fill="none" stroke="#d4a574" '
            f'stroke-width="0.6" opacity="{opacity:.3f}"/>'
        )

    # Character labels
    names = ['henning', 'maya', 'lin wei', 'amara', 'tomas', 'sara']
    positions = [90, 170, 255, 345, 430, 510]
    name_svg = []
    for name, px in zip(names, positions):
        name_svg.append(
            f'<text x="{px}" y="{start_y - 10}" font-family="\'JetBrains Mono\',monospace" '
            f'font-size="9" fill="#8a8aaa" opacity="0.7" text-anchor="middle">{name}</text>'
        )

    if small:
        # Small variant — no title, no text, just the visual
        return f'''<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {width} {height}" width="{width}" height="{height}">
<rect width="{width}" height="{height}" fill="#1a1a2e"/>
<defs><radialGradient id="cg" cx="50%" cy="60%" r="30%">
<stop offset="0%" stop-color="#d4a574" stop-opacity="0.12"/>
<stop offset="100%" stop-color="#d4a574" stop-opacity="0"/>
</radialGradient></defs>
<rect width="{width}" height="{height}" fill="url(#cg)"/>
{''.join(wake_svg)}
{''.join(lines_svg)}
<circle cx="300" cy="540" r="3" fill="#d4a574" opacity="0.8"/>
{''.join(name_svg)}
</svg>'''

    # Full cover
    return f'''<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {width} {height}" width="{width}" height="{height}">
<defs><radialGradient id="cg" cx="50%" cy="60%" r="30%">
<stop offset="0%" stop-color="#d4a574" stop-opacity="0.12"/>
<stop offset="100%" stop-color="#d4a574" stop-opacity="0"/>
</radialGradient></defs>
<rect width="{width}" height="{height}" fill="#1a1a2e"/>
<rect width="{width}" height="{height}" fill="url(#cg)"/>
{''.join(wake_svg)}
{''.join(lines_svg)}
<circle cx="300" cy="540" r="3" fill="#d4a574" opacity="0.8"/>
{''.join(name_svg)}
<text x="300" y="90" font-family="'JetBrains Mono',monospace" font-size="48" font-weight="700" fill="#d4a574" text-anchor="middle" letter-spacing="6">CHECKPOINT</text>
<text x="300" y="122" font-family="'JetBrains Mono',monospace" font-size="12" fill="#6a6a8a" text-anchor="middle">How we optimized into the void.</text>
<text x="300" y="890" font-family="'JetBrains Mono',monospace" font-size="13" fill="#c4c4d4" text-anchor="middle">R.F. &amp; Claude</text>
</svg>'''


if __name__ == '__main__':
    script_dir = os.path.dirname(os.path.abspath(__file__))
    base_dir = os.path.dirname(script_dir)

    # Full cover
    cover_full = generate_cover()
    full_path = os.path.join(script_dir, 'cover.svg')
    with open(full_path, 'w') as f:
        f.write(cover_full)
    print(f'  {full_path}')

    # Small variant (no title text, for embedding)
    cover_small = generate_cover(small=True)
    small_path = os.path.join(base_dir, 'website', 'cover-small.svg')
    with open(small_path, 'w') as f:
        f.write(cover_small)
    print(f'  {small_path}')

    print('Done. Use cover.svg for PDF/README, cover-small.svg for website.')
