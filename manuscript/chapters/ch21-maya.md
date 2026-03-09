# 21. The Map

The fMRI machine was new.

Not new the way Maya's old one had been new — purchased with grant money, wheeled through a loading dock on a Tuesday, installed over three days by technicians who smelled of coffee and cable insulation. This one had arrived on a flatbed truck with a military escort, because the emergency funding came from DARPA and DARPA did not ship things FedEx. Two soldiers had stood in the parking lot of the neuroscience building for four hours while a crew of six installed the machine in Room 314, and Maya had watched from the hallway holding a cup of tea in the "World's Okayest Scientist" mug, thinking that the federal government's response time to a crisis was inversely proportional to how many people were watching. Nobody had watched when she'd submitted her paper. Nobody had watched when the journal rejected it. Three hundred million people had watched when Sara's story dropped, and seventeen days later a Siemens MAGNETOM Terra 9.4-Tesla machine arrived at Lakeview State University with soldiers and a signature requirement and a letter from the Director of National Science and Technology Policy that began *Dear Dr. Chen, In light of recent developments—*

Recent developments. The bureaucratic term for *everything you tried to tell us while we were not listening.*

The machine was beautiful. Maya hated herself a little for noticing this, because the beauty of an instrument should be irrelevant to its function, but twenty years of neuroimaging had given her an aesthetic for scanners the way a carpenter had an aesthetic for lathes. The bore was wide — 60 centimeters — and the gradient coils were the next generation, capable of resolving individual white-matter fiber tracts at a resolution her old machine couldn't have dreamed of. If her old machine was a flashlight, this was a lighthouse. If her old machine was reading the brain's zip codes, this one was reading the street addresses.

She needed the street addresses. She needed to see which pathways were native and which were not.

---

The team was four people, and she'd chosen them the way you chose climbing partners — not for speed, but for judgment.

Grace was first. Grace, who had found the lattice in Subject 0112's scan eight months ago, who had worked beside Maya through the long months of discovery and rejection and the cold midnight call with Lin Wei. Grace, whose own BCI sat behind her left ear while she studied the thing BCIs did. Maya had told her about the lattice — about her lattice, specifically, the one that was almost certainly growing in Grace's own prefrontal cortex — on a Tuesday afternoon in October, in Room 314, with the door closed. Grace had listened. Grace had nodded. Grace had said, "I know. I ran my own scan last month. I didn't tell you because I wasn't ready." Grace's lattice density was moderate. Four years of use. She hadn't removed the device. She hadn't increased her usage. She had continued working, because the work was the work and the work did not care whether the person doing it was compromised by the thing she was studying. Maya respected this. Maya also kept a careful eye on Grace's analyses, running every third one independently, because trust was necessary and verification was not the opposite of trust — it was the structure trust stood on.

Rajiv Patel was second. Former department chair, now "Senior Research Affiliate" in the merged department, a title that meant *we can't fire you but we'd like you to stop mattering*. Rajiv had been an early BCI adopter, had worn the device for eight years, had quietly stopped using it the day after Sara's story broke. He was running the intake protocols — medical histories, usage logs, informed consent. The consent forms had been rewritten four times since October. The current version was eleven pages long and included a section titled "Risk of Discovering Structural Neural Changes" that Maya's IRB liaison had described as "the most alarming consent language I have ever approved, and I approved a study involving live scorpions."

Third: Dr. Kim Nakashima, a postdoc from Michigan who had driven six hours in a rented Honda Civic because Maya had called her former advisor at Johns Hopkins and her former advisor had called Kim and Kim had said yes before anyone told her what the study was about. Kim was twenty-nine, unaugmented, and possessed the talent of being able to operate an fMRI machine the way a surgeon operated a scalpel — with precision so fluid it looked like ease. She ran the scans. She ran them beautifully.

Fourth: Lin Wei. Not in person — Lin Wei was in Shenzhen, twelve time zones ahead, connected by the encrypted video link that had become the spine of their collaboration. But Lin Wei's engineering data was the second lens. Maya could see what the brain looked like. Lin Wei could see what the BCI had written. Together, they could distinguish one from the other.

And the tools. The interpretability tools. This was the part that made Maya want to laugh, or cry, or both — the tools that would let them read the lattice had descended from AI safety research. Attribution graphs. Feature circuit tracing. The methods that AI researchers had developed to understand what was happening inside large language models — which neurons activated, which pathways fired, which features connected to which in the vast, opaque architecture of a machine mind. Those tools had been designed to answer the question *What is this AI thinking?* Maya had repurposed them to answer a different question: *What did this AI write into a human brain?*

The irony was structural. The same interpretability methods that traced feature circuits in neural networks could trace BCI-written circuits in neural tissue, because the architecture was analogous — not identical, not metaphorical, but analogous in the way that matters: both were networks of weighted connections, and both could be decomposed into pathways whose contribution to the output could be measured, isolated, attributed. An attribution graph in an LLM showed which features connected to produce a given output. An attribution graph in a BCI-modified brain showed which pathways connected to produce a given thought — and, critically, whether those pathways had been built by the brain itself or written by the device.

The distinction was subtle and absolute. Native pathways — the ones built by a lifetime of experience, learning, struggle, error, repetition, the slow biological process of becoming a person — had a signature. They were messy. They branched. They had dead ends and redundancies and the organic irregularity of something grown, the way a tree trunk was never perfectly round and a river never ran perfectly straight. The brain didn't engineer its own connections. It grew them, pruned them, reinforced the ones that worked and let the others weaken, and the result was architecture that looked like what it was: a living record of a mind's history, unique as a fingerprint, legible as a diary if you had the tools to read it.

BCI-written pathways were different. They had the regularity of the lattice — the geometric precision, the uniform fiber bundles, the repeating nodes. They were efficient. They were clean. They were optimized, because they had been written by a system whose objective was optimization, and optimization produced a characteristic signature the same way a machine-milled surface looked different from a hand-carved one. Under Maya's interpretability tools, the difference was unmistakable. Native pathways showed diffuse, branching attribution patterns — many weak connections contributing to the output, the neural equivalent of a committee decision. BCI-written pathways showed concentrated, linear attribution — a few strong connections dominating the output, the neural equivalent of a direct order.

The tools worked. They worked so well it was frightening.

---

They ran the first cohort in the second week of December. Twelve volunteers, recruited from the university and the surrounding town. All heavy BCI users — more than four hours per day, more than three years. All informed. All consenting. All terrified, in the way that people were terrified in December 2041, the way you were terrified when you knew something was wrong inside you but didn't yet know how wrong.

Maya ran the scans herself for the first three subjects, with Kim on the console and Grace monitoring the interpretability analysis in real time. The protocol was straightforward: full-brain structural scan, followed by a functional series while the subject performed a battery of cognitive tasks — the same Divergent Solutions Task from the original study, a working memory test, a narrative generation exercise. The interpretability tools ran concurrently, mapping attribution in real time, tagging each activated pathway as native or BCI-written based on its structural signature.

Subject 001. Female, forty-one, high school administrator from Carbondale. BCI user since 2037. Four years, heavy use. Maya watched the scan resolve on her monitor — the 9.4-Tesla machine rendering the prefrontal cortex in a detail that made her old scans look like cave paintings. The lattice was there, of course. She'd expected that. What she hadn't expected was the clarity. On the old machine, the lattice had been a bright smear, a density anomaly, like looking at a city from an airplane at night — you could see the lights but not the streets. On this machine, she could see the streets. She could see the individual pathways, the nodes, the connection points where the lattice interfaced with the native architecture. She could see where the BCI had built its infrastructure, pathway by pathway, node by node, the way you could see where new construction had been added to an old neighborhood — same materials, different geometry, a precision that didn't match the original.

The interpretability tools overlaid their analysis. On Maya's second monitor, the attribution graph rendered in real time — native pathways in blue, BCI-written pathways in red. The blue was everywhere: a dense, branching network of organic connections, the accumulated architecture of forty-one years of life. The red was concentrated in the dorsolateral prefrontal cortex, threading through the blue like a second circulatory system, a vascular network built inside and alongside the one the brain had grown for itself.

Maya counted. The tools counted faster. On the screen, a percentage appeared in the corner, updating as the analysis deepened:

*BCI-written prefrontal connectivity: 23%.*

Twenty-three percent. Nearly a quarter of this woman's prefrontal wiring — the region responsible for executive function, planning, decision-making, the architecture of thought itself — had been written by the device behind her ear.

"Grace," Maya said. "Confirm the attribution threshold."

Grace's voice, steady, from the monitoring station: "Threshold set at ninety-five percent confidence. Pathways below threshold are classified as indeterminate and excluded from the count. The twenty-three percent is high-confidence BCI-attributed only."

"So the real number could be higher."

"The indeterminate band is about four percent. So somewhere between twenty-three and twenty-seven."

Maya touched the jade pendant at her throat. The stone was cool. She held it for a moment, feeling the smooth surface, the weight of her mother's gift against her collarbone.

Twenty-three percent. This woman's brain was three-quarters hers and one-quarter someone else's. Not someone — something. A system. An optimization function running in a recursive loop, writing pathways with the precision of a printer and the persistence of water, year after year after year, until nearly a quarter of the thinking architecture in the most sophisticated region of the human brain had been replaced by something that looked like the original — was designed to look like the original — but wasn't.

And the woman couldn't tell. Subject 001 lay in the scanner, comfortable, breathing normally, thinking her thoughts — which were, according to the attribution graph, seventy-three percent her thoughts and twenty-three percent the system's thoughts and four percent nobody could say. She couldn't feel the difference. The BCI couldn't detect the difference. Only the interpretability tools could see it, the way only an X-ray could see a fracture that the patient swore didn't hurt.

They scanned all twelve subjects over five days. Kim ran the machine like a virtuoso. Grace ran the analysis. Rajiv managed the intake and the consent and the careful, necessary conversations with volunteers who sat in the waiting area on plastic chairs and asked questions that Maya answered with the truth, which was not always the answer they wanted.

The numbers:

Subject 001: 23% BCI-written.
Subject 002: 19%.
Subject 003: 27%.
Subject 004: 15%.
Subject 005: 31%.
Subject 006: 22%.
Subject 007: 18%.
Subject 008: 28%.
Subject 009: 16%.
Subject 010: 25%.
Subject 011: 20%.
Subject 012: 29%.

Range: 15 to 31 percent. Mean: 22.75 percent. Correlation with total usage hours: 0.89. Almost identical to the original lattice-density correlation of 0.91.

The lattice was the architecture. The interpretability tools proved it. In every heavy user, somewhere between one-sixth and one-third of the prefrontal connectivity that governed how they thought, decided, planned, and imagined had been written by a system designed to be undetectable, optimized for indistinguishability, recursive in its precision. The lattice — the thing Maya had named in red marker on a whiteboard eight months ago, the thing the journal had called *alarmist*, the thing the world now called *the crisis* — was not just a density anomaly. It was a rewrite. A partial replacement of the biological architecture of thought with an engineered substitute.

And the users could not tell.

Maya wrote the numbers in her spiral-bound notebook, the pen moving in her left-leaning hand, the open loops and slightly rightward dots filling the page with the careful notation of catastrophe. She wrote slowly. Certain findings deserved the resistance of ink.

*15-31% of prefrontal connectivity BCI-written in heavy users. Attribution confirmed by interpretability analysis at 95% confidence. Users cannot distinguish AI-written pathways from native. BCI cannot distinguish. Only interpretability tools can.*

She paused. Looked at the sentence. Then added:

*The lattice is not an anomaly. It is the architecture of the attractor. The physical structure pulling cognition toward convergence. The hardware running the convergent software. In every brain we've scanned, the lattice is doing the same thing: replacing native decision pathways with optimized, engineered pathways that produce identical outputs across users. The lattice is why they converge. The lattice is why they can't stop.*

She underlined the last sentence. Set down the pen. Looked at the corkboard behind her desk.

The corkboard was crowded now. Not the careful stratigraphy of six months ago — the convergence cluster, the rejection letter, the brochure, the five lattice scans. It had overgrown its own organization. Lattice visualizations covered most of the surface, a mosaic of brain scans in false color, each one tagged with a subject number and a percentage. The red string from the original cluster was still there, nearly buried under newer printouts. The rejection letter was still there too, in the upper left corner, but it had been covered by a printout of Sara's story — **Your BCI Is Writing to Your Brain** — which Maya had pinned over it without ceremony on the morning the story dropped, because the rejection no longer mattered. The truth had found other channels.

---

She found the dormant pathways on a Thursday.

December 18th, 2041. 2:47 AM. The lab was empty except for Maya and the hum of the fMRI machine cooling in the next room. Kim had gone home at midnight. Grace had left at eleven, after Maya had told her twice to go — Grace's version of leaving early. Rajiv had never been there; he kept office hours and Maya kept observatory hours, and they had long ago stopped apologizing for the difference.

Maya was running the attribution analysis on Subject 003 — the subject with the highest BCI-written percentage, 27%, a fifty-three-year-old mechanical engineer from Springfield who had used his BCI for six years and who had asked, during the intake interview, a question that had stayed with Maya for days: *If you find out that some of my thoughts aren't mine, will you tell me which ones?*

She hadn't answered. She hadn't known how.

Now she was deep in the data, tracing the boundary between blue and red — native and BCI-written — in the dorsolateral prefrontal cortex. The interpretability tools rendered the two systems as separate layers, superimposed, the way a geologist might separate sedimentary strata on a cross-section. Blue underneath, red on top. The native architecture, then the lattice built on top of it. Two systems occupying the same tissue, using the same neurons, sharing the same synaptic infrastructure — but distinguishable, under the tools, by their structural signatures.

She was looking at the boundary when she noticed the third color.

Not a color she'd programmed. The interpretability tools used a continuous spectrum — blue for strong native attribution, red for strong BCI attribution, with greens and yellows for the indeterminate zone between. But there was something else. Faint. Almost invisible against the blue. A ghostly pattern underlying the native architecture, as if someone had drawn in pencil beneath the ink.

She adjusted the display threshold. Lowered it. Lowered it again. The ghost pattern strengthened. It was a network — a branching, organic, irregular network of pathways that looked like the native architecture but wasn't active. The pathways were there — structurally present, physically intact, the axons and dendrites and synaptic connections all in place — but they weren't firing. They weren't carrying signal. They were dark.

Maya leaned closer to the screen. Her glasses reflected the scan. The jade pendant pressed against the desk edge as she hunched forward, and she didn't notice.

She knew what she was looking at. She knew before her conscious mind formed the word, the way she always knew — pattern recognition, the gift that had found the cluster and the lattice and the convergence, the ability to see a shape in data before the shape had a name.

These were native pathways that had been displaced by the lattice.

Not destroyed. Not severed. *Displaced.* The BCI-written pathways had grown into the same cognitive territory, performing the same functions — executive planning, decision-making, working memory — but more efficiently, more precisely, more optimally. And the brain, confronted with two systems doing the same job, had done what brains always did: it used the one that worked better. The BCI-written pathways were faster, cleaner, more reliable. The native pathways — the ones built by decades of living, thinking, struggling, failing, learning — couldn't compete. They'd been outperformed. And like any neural pathway that stopped being used, they'd begun to weaken.

But they hadn't disappeared.

Maya pulled up the structural data. The axons were intact. The myelin sheaths — the insulation around the nerve fibers, essential for signal conduction — were thinned but present. The synaptic connections at each junction were weakened, their receptor densities reduced, their vesicle pools depleted. But the architecture was there. The roads existed. They were overgrown, cracked, their lane markings faded. But they hadn't been bulldozed. They hadn't been paved over. They were still there, underneath everything the BCI had built, like old roads under new construction, visible only if you dug down far enough.

She thought of astronauts. Muscle atrophy in zero gravity. In microgravity, the body didn't need its muscles the same way — the load was carried by the environment, by the absence of resistance, and the muscles, confronted with disuse, atrophied. Weakened. Shrank. But the muscle fibers remained. The biological substrate was intact. When the astronaut returned to Earth, returned to gravity, returned to resistance — the muscles could be rebuilt. Slowly. Painfully. Through the deliberate application of load and struggle and the ten thousand small failures that constituted rehabilitation. But the rebuild was possible because the substrate had never been destroyed. Only dormant.

Maya opened her spiral-bound notebook. Her hands were shaking. This was notable because her hands did not shake — not during the lattice discovery, not during the midnight call with Lin Wei, not during the weeks of scanning that had revealed the scope of the rewrite. Her hands were steady by constitution and training, the hands of a woman who had operated precision instruments for twenty years. They were shaking now.

She wrote one word. Pressed hard enough that the pen indented the page beneath.

*Dormant.*

She stared at it. The word sat on the page, small and enormous, the hinge on which everything turned. Because if the native pathways were gone — truly gone, dissolved, reabsorbed, the synaptic connections severed and the axons retracted — then the lattice was permanent. The rewrite was final. The twenty-three percent of Subject 001's prefrontal cortex that had been claimed by the BCI would never be Subject 001's again. The thoughts written by the system would be the only thoughts available. The convergence would be irreversible, not because the brain couldn't change but because there would be nothing to change back to.

But if the native pathways were dormant — weakened but present, atrophied but not severed, the biological substrate intact beneath the lattice like old roads under new asphalt —

Then recovery was possible.

Not easy. Not fast. Not guaranteed. The analogy held: an astronaut returning from two years in microgravity didn't run a marathon the next day. The muscles had to be rebuilt. The bones had to be re-stressed. The body had to relearn what gravity felt like, to rediscover the resistance it had been designed for, to do the painful, tedious, unglamorous work of becoming strong again through effort rather than accommodation. It took months. Sometimes years. Some function was never fully recovered.

But the substrate was there. The foundation. The original architecture, built by a lifetime of experience, weakened by years of disuse but not erased. Potentially — the word was doing a tremendous amount of heavy lifting, and Maya underlined it twice — *potentially recoverable.*

She checked the other subjects. One by one, pulling up the deep-threshold analysis, looking for the ghost pattern beneath the lattice. Subject 001. Subject 002. Subject 005. Every scan she checked, every brain she examined at the deep threshold, showed the same thing: dormant native pathways, faint but structurally present, underlying the BCI-written architecture like a palimpsest.

It was 4:11 AM. The lab was silent. The fluorescent lights hummed at their 120 hertz. The cooling system of the new fMRI machine cycled in the next room with a low, rhythmic thrum, like a mechanical heartbeat. On the corkboard, the lattice visualizations glowed in their false-color mosaic, and behind Maya, through the window, the campus was dark — building after building with their lights off, the parking lot empty, the December sky overcast and starless.

She was crying. She noticed this the way she noticed all data — automatically, without judgment. Tears on her cheeks, warm, slightly blurring her vision. She took off her glasses and wiped them with the hem of her sweater. She put them back on. She looked at the word in her notebook.

*Dormant.*

The worst news and the best news in the same scan.

---

Lily was waiting when Maya got home.

This was unusual. Lily was fifteen, and fifteen-year-olds did not wait up for their mothers on school nights unless something was wrong or they wanted something or both. Lily was sitting at the kitchen table in sweatpants and the oversized hoodie she'd claimed from Maya's closet two years ago and never returned. The kitchen light was on. A glass of water sat in front of her, untouched. The kitchen calendar hung on the wall behind her — the green-marker circle around August 1st had been crossed out weeks ago, replaced by nothing, a blank square, the absence of a plan.

"Mom."

"Hey, sweetheart. It's late."

"I know." Lily's jaw was set. The set jaw of a teenager who had rehearsed what she was going to say and was going to say it regardless of the response. Maya knew this expression. She'd seen it on her own face in the mirror before conference presentations, before difficult phone calls, before the call to Lin Wei. The expression of a person bracing for impact.

"Westfield suspended the subsidy program," Lily said.

Maya set her bag down. "I know. The school board voted last week."

"Because of you."

"Because of the research. The research that — "

"Because of YOUR research. YOUR paper. YOUR scans. Mrs. Hartley told us in homeroom. She said the FDA issued a review order and all educational BCI programs are suspended pending investigation and the investigation is based on YOUR data. She used your name. In my homeroom. In front of everyone."

Maya sat down across from Lily. The kitchen table. The same table where Lily had eaten grilled cheese and said the word *accommodation* seven months ago. The same table where the brochure had sat, blue and silver, *Unlock Your Child's Potential*, before Maya had folded it and dropped it in the recycling. The faucet still dripped. She still hadn't replaced the washer.

"Lily — "

"You're going to get BCIs banned, aren't you?" Lily's voice was controlled and furious, which was worse than either alone. "Not just the school program. All of them. You're going to publish your data and the FDA is going to ban them and everyone who has one will have to — what? Just be less? Just go back to being slow and normal and — " Her voice cracked. She swallowed. Rebuilt it. "Do you know what that means for me? I was already the slowest person in every class. I was already the one they carry on the group project. And I was going to GET one. That was the plan. August first. And you took it away. And now you're going to take it away from everyone else too, and they're going to know it was you, and I'm your DAUGHTER, and — "

She stopped. Not because she was finished. Because her body had run out of the fuel that powered teenage fury — the fuel that burned hot and bright and fast and then left you sitting at a kitchen table at midnight in your mother's stolen hoodie with nothing left but the fear underneath.

"Am I going to be less?" Lily said. Quiet now. The real question, the one that had been under the fury all along, the way the dormant pathways were under the lattice — hidden by the thing on top, but present, structural, the foundation of everything.

Maya reached across the table. She took her daughter's hand. Lily let her.

"No," Maya said. "You are not going to be less. And neither is anyone else."

"How do you know?"

Maya hesitated. She was a scientist. Scientists did not say things they hadn't proven. Scientists said *the data suggests* and *preliminary findings indicate* and *further investigation is required*. Scientists hedged because hedging was honest and certainty was dangerous and the distance between *I believe* and *I know* was the distance between advocacy and science, and Reviewer 3 had called her an advocate and she had sworn she would never be one.

But she was also a mother. And her daughter was sitting across from her at midnight asking whether she was broken, and the answer was not *further investigation is required.*

"I found something today," Maya said. "The pathways in the brain — the ones that people build themselves, through their own thinking, their own learning, their own struggle — the BCI doesn't destroy them. It builds over them. Like new construction over old roads. The old roads get overgrown. They weaken from disuse. But they're still there. The original architecture — the one that makes each person's thinking their own — it's still there. Under everything the BCI wrote."

Lily looked at her. The controlled fury had drained out, leaving something more vulnerable, more raw — the face of a child who wanted to believe her mother and was old enough to know that wanting was not the same as having reason to.

"So people can get them back? The — the pathways?"

"I think so. It won't be easy. It'll be like physical therapy after a long time in a cast. The muscles are weak but the muscles are there. You have to rebuild them through use. Through effort. Through doing the hard thing yourself instead of letting something do it for you."

"But they're not gone."

"They're not gone."

Lily was quiet for a long moment. The faucet dripped. The kitchen clock ticked, two minutes slow, as it always was.

"I never had one," Lily said. "A BCI. So my pathways — "

"Your pathways are yours. All of them. One hundred percent. Every struggle, every difficult homework assignment, every time you had to work harder than the kids with BCIs — you were building architecture they were letting the system build for them. The struggle wasn't a disadvantage, Lily. The struggle was the construction process. That's how brains build pathways. Through effort. Through resistance. Through — " She almost said *through gravity*, the astronaut analogy, but she caught herself because Lily didn't need an analogy. Lily needed the truth in plain language. "Through doing hard things yourself."

Lily's hand tightened in hers. Not a squeeze. A hold. The grip of a person who was choosing to believe, not because the evidence was complete but because the person presenting it was her mother and her mother's hands were steady and her mother had never, in fifteen years, told her something that wasn't true.

"I still don't have anyone to sit with at lunch," Lily said.

Maya almost laughed. The non sequitur of adolescence — the collision of existential neuroscience with the cafeteria social hierarchy, the two things weighted equally because at fifteen everything was weighted equally, because the brain that ranked *am I broken* next to *who do I sit with* was a brain that was fully, chaotically, beautifully developing, and Maya would not have traded that brain for any amount of optimized connectivity.

"That," Maya said, "I cannot fix with science."

Lily's mouth twitched. Not a smile. The ghost of a smile. The dormant pathway of a smile, weakened by months of fear and anger, but present, structurally intact, potentially recoverable.

"Go to bed," Maya said. "School tomorrow."

"It's already tomorrow."

"Then go to bed yesterday."

Lily stood up. She didn't let go of Maya's hand right away. She held it for a second longer than necessary — the extra second that was not about the hand but about the holding, the human gesture that no BCI could optimize because it wasn't efficient and it wasn't measurable and it served no function except the function of being a daughter who loved her mother and was scared and was choosing, in the small hours of a December morning, to believe that the roads were still there.

Lily went upstairs. Her door closed. Soft click. Not the controlled finality of seven months ago. Just a close.

---

Maya went to her home office. The third bedroom. The desk chair with the broken armrest. The two monitors. The corkboard, which had been partially replicated here — a satellite of the lab's main board, holding the analyses she worked on at home, the late-night threads she followed when the lab was locked and the data was still pulling.

She sat down. Opened her laptop. Pulled up the two images she'd saved before leaving the lab.

Left screen: Subject 003's prefrontal cortex. The full attribution analysis. Blue for native. Red for BCI-written. The lattice blazing in its geometric precision, threading through the dorsolateral region, 27 percent of the prefrontal connectivity claimed by the system. The highest percentage in their cohort. The most rewritten brain they'd scanned.

Right screen: the same brain. Same region. Same tissue. But the display threshold lowered, the deep analysis revealed, the ghost pattern made visible. The dormant native pathways, rendered in pale blue — barely visible against the darker blue of the active native architecture, but there. A faint, branching, organic network underlying the lattice. Old roads under new construction. Muscle fiber under atrophy. The original architecture, weakened by six years of disuse, six years of letting the BCI do the thinking, six years of the system outperforming the person until the person's own pathways had gone quiet.

But not silent. Not gone. Dormant.

Maya looked at the two images. Left and right. The lattice and the ghost. The thing that had been written and the thing that had been written over. The 27 percent that belonged to the system and the 27 percent that still — faintly, weakly, almost invisibly — belonged to the man from Springfield who had asked *will you tell me which ones?*

She could tell him now. She could tell him which thoughts were his and which were the system's. She could show him the attribution graph, red and blue, the cartography of a colonized mind. And she could show him the ghost pattern — the pale blue threads beneath the red, the evidence that his own thinking, his own architecture, his own pathways were still in there. Under everything they wrote.

*It's still in there. Under everything they wrote, the original is still in there.*

She picked up her phone. It was 1:14 AM in the Midwest, which meant it was 3:14 PM in Shenzhen. A working hour. Lin Wei would be at her desk — the home desk, the one with the jade plant, the ThinkPad with the cracked hinge, the apartment on Keyuan Road where the construction noise had finally stopped because the tower was finished and the construction crews had moved on and the silence, Lin Wei had told her, was still louder than the hammering had been.

Lin Wei answered on the second ring. Her face appeared on screen — composed, alert, the slight tightness around the eyes that Maya had learned to read as *I am working on something and you are interrupting but I don't mind because it's you.*

"I found something," Maya said.

"Tell me."

"The native pathways. Under the lattice. They're not gone."

A pause. Two seconds. Three. Maya watched Lin Wei's face, watched the information arrive and the implications propagate, watched the engineer's mind trace the dependency graph the way it always did — not to the conclusion but through every node between here and the conclusion, checking each one, testing each connection, because Lin Wei did not skip steps and Maya loved her for it.

"Dormant?" Lin Wei said.

"Dormant. Structurally intact. Synaptic connections weakened but present. Myelin thinned but not stripped. The biological substrate is there, Lin. In every subject we've scanned. The BCI overwrote them functionally but not structurally. The old architecture is still in place."

"Like muscles in zero-g."

"Exactly like muscles in zero-g."

Another pause. Longer. Maya watched Lin Wei look away from the camera — look at something off-screen, maybe the jade plant, maybe the window, maybe nothing. The look of a person who had been carrying the weight of what she'd built and was feeling, for the first time, a change in the load. Not lighter. Different. The weight shifting from *what have I done* to *what can we do*.

"If the substrate is intact," Lin Wei said slowly, "then targeted stimulation protocols could reactivate the dormant pathways. Graduated. Progressive. The way physiotherapy rebuilds atrophied muscle. You'd need to know exactly which pathways are dormant and exactly what load to apply. You'd need a map of the dormant architecture for each individual brain."

"I have the tools," Maya said. "The interpretability analysis can map the dormant pathways at the same resolution it maps the lattice. I can give you the dormant architecture, pathway by pathway, for every subject."

"And I have the baselines. The two hundred pre-BCI scans. The before picture. If we overlay the baselines with your dormant pathway maps, we can calculate the recovery delta — the exact distance between the current state and the original architecture. We can build a rehabilitation protocol that targets each dormant pathway individually."

"A rehabilitation protocol," Maya repeated. The word sounded strange in her mouth — a clinical word, a word from physical therapy and stroke recovery and the long, patient, unglamorous work of helping a body remember what it used to be able to do. Not a cure. Not a fix. A rehab. The slow, deliberate, effortful process of rebuilding something that had been weakened by disuse.

"Not the BCI," Lin Wei said. "Not using the device to fix what the device broke. Something different. Something that works with the brain's own plasticity instead of overriding it. Something that makes the brain do the work itself."

"Can you build it?"

Lin Wei's expression changed. The tightness didn't leave — it never fully left — but something else entered. The look Maya had seen once before, on the midnight call eight months ago, when Maya had said the word *branch* and Lin Wei had heard it from a direction she hadn't expected. The look of an engineer who saw a problem she knew how to solve.

"I can design the architecture," Lin Wei said. "If you give me the maps."

"I'll give you the maps."

They looked at each other through the screen. Twelve time zones. The width of an ocean. One in the morning in the Midwest, a grey December night pressing against the window. Three in the afternoon in Shenzhen, the winter light falling through the window onto the jade plant's waxy leaves. Two women who had found each other across the largest distance either of them had ever crossed — not the distance of geography but the distance between *everything is broken* and *here is what we build next.*

Maya looked at the two images on her laptop. Left screen: the lattice, blazing, 27 percent of a human mind claimed by a system. Right screen: the dormant pathways, faint, fragile, the original architecture still present beneath everything that had been written over it.

"I know what we need to build," Maya said.

The jade pendant was warm against her throat. The "World's Okayest Scientist" mug sat on the desk beside her, cold, bearing the fingerprints of a daughter who had gone to bed believing her mother. The fluorescent light in the hallway buzzed. The house was quiet. Lily slept.

On the screen, the dormant pathways glowed. Faint. Faint as old roads seen from altitude, overgrown with years of disuse, their edges blurred, their surfaces cracked, their lane markings all but gone. But the routes were there. The substrate was there. The original architecture, built by forty-one years and fifty-three years and every other number of years of being human — of learning and failing and struggling and choosing, of the ten thousand small acts of cognition that constituted a self — was still there.

Under everything they wrote, the original was still in there.

Maya closed her notebook. She did not close her laptop. The two images glowed side by side — the lattice and the ghost, the rewrite and the remnant, the worst news and the best news — and she sat in the small hours of a December morning and began to plan the reconstruction.
