# 23. The Branch

The call was scheduled for 14:00 UTC, which was 8 AM in Maya's lab, 10 PM in Lin Wei's safehouse, 3 PM in Henning's workshop, and 5 PM in Amara's classroom — a schedule that satisfied nobody perfectly, which Sara said was the definition of a good compromise and Henning said was the definition of a meeting.

Six tiles on the screen. Six faces. Four continents.

Maya's tile showed the lab at Lakeview State — Room 314, the new fMRI machine hulking in the background like a piece of sculpture that had wandered in from a different building. She had her spiral-bound notebook open, a pen in her left hand, the jade pendant visible against her sweater. Behind her, the corkboard was a mosaic of brain scans and printouts and red string that had long since ceased to follow any organizational principle and had become, instead, a map of a mind at work.

Lin Wei's tile was dark. Not the darkness of a room without light — the darkness of a room lit by a single laptop, the screen illuminating her face from below, catching the angles of her cheekbones and the shadows under her eyes. Behind her: a wall. No windows. The safehouse — she had not told them where, and nobody had asked, because asking was a risk and not asking was a courtesy and the distinction between the two was the kind of operational security Sara had taught them all without ever using the phrase.

Henning's tile showed the workshop. The tool wall was visible over his left shoulder, the silhouettes holding their positions, the fluorescent lights casting their usual institutional pallor. He was sitting at the workbench he used as a desk, the one with the coffee ring from the Moccamaster and the scratch marks from thirty years of cable ends and chalk. His laptop was propped on two VDE reference books because the angle was wrong otherwise, and the WiFi extender he'd installed last week — installed himself, naturally, because he did not pay contractors for work he could do with a drill and twelve meters of cable — was blinking its green light in the background with the regularity of a metronome.

Amara's tile stuttered. Her face assembled itself in fragments — forehead, then left eye, then the whole picture snapping into focus for three seconds before pixelating again. She was on the donated tablet, in her classroom, the shutters open, the equatorial light burning out the background into a white blaze that made her look as if she were broadcasting from the surface of the sun. She'd tilted the tablet against a stack of textbooks — the same textbooks, ten years old, that her students used — and she was fanning it with her green notebook because the processor was overheating, which it did whenever the video call exceeded four participants, which was always.

Tomas and Sara shared a tile. They were in Zurich, in the apartment on Langstrasse, the beer-stain coffee table visible in the lower corner of the frame. Sara had her Moleskine open. Tomas sat slightly behind her, his hand at the back of his head — not touching the patch, not quite, but close enough that the gesture communicated what it always communicated: *I am inside the thing we are discussing*.

"Can everyone hear me?" Maya said.

"Yes," said Lin Wei.

"Mostly," said Amara. Her voice arrived half a second after her lips moved. "The connection will hold for approximately seven minutes. Then it will not. Then it will again. This is normal."

"My WiFi is — " Henning's tile froze. His mouth was open, mid-word, his right hand raised in a gesture of either explanation or irritation. The tile unfroze. " — working now."

"Beautiful," Sara said, in a tone that meant the opposite. "Let's begin."

---

Maya stood. She did not need to — her face left the frame when she stood, and she had to crouch slightly to stay in the camera's field of view, which gave her the posture of someone trying to explain something important while hiding behind a wall. She sat back down.

"I'm going to share my screen," she said.

"Share it before you explain it," Lin Wei said. "I want to see the data before the narrative."

"The data is the narrative."

"Data is never the narrative. Data is data. Narrative is what people do to data when they want it to mean something."

"Lin Wei."

"Share the screen."

Maya shared. The wall of tiles shrank to a sidebar, and the main display filled with two brain scans, side by side. The left scan was tagged SUBJECT 003 — PRE-BCI BASELINE, 2036. The right scan was tagged SUBJECT 003 — CURRENT, 2041. Both were false-color attribution maps, the interpretability analysis overlaid: blue for native pathways, red for BCI-written, and beneath them, visible only at the deep threshold, a ghost pattern in pale blue — faint, branching, organic. The dormant native pathways. The roads under the roads.

"This is the basis," Maya said. "Left: what Subject 003's prefrontal cortex looked like before the BCI was activated. Right: what it looks like now. Twenty-seven percent BCI-written connectivity. The highest in our cohort. But look at the deep threshold." She adjusted the display. The ghost pattern brightened. "The original pathways are still there. Structurally intact. Synaptic connections weakened, myelin thinned, but present. Dormant, not dead."

She clicked. A third image appeared — a difference map, the delta between before and after, the mathematical distance between the brain this man had built over fifty-three years of living and the brain the BCI had partially rewritten over six years of use.

"The recovery delta," Maya said. "The distance we need to close. And here's the critical insight: the brain's own plasticity — the same plasticity the chain exploited to write the lattice — can work in reverse. Not erasing. You can't erase long-term potentiation. You can't uncommit from main." She glanced at Lin Wei's tile. "But you can grow new pathways alongside the existing ones. The same mechanism that builds the lattice — Hebbian learning, synaptic strengthening through repeated use — can reactivate the dormant native architecture. If we can get the brain to use those pathways again."

"Physical therapy," Tomas said, from behind Sara. "After stroke."

"Exactly after stroke. The damaged pathways don't regenerate. But the brain routes around them. It activates alternative pathways, strengthens connections that were dormant or underused, builds new architecture that restores function through a different route. The principle is the same. The plasticity is the same. The challenge is the same: you have to make the brain do the work itself. You cannot do it for the brain. Doing it for the brain is what created the problem."

"How," Henning said. Not a question — a single syllable that meant *get to the point*.

Maya took a breath. "That's why we're all here. The protocol has four components. Each of you built one. I need all four."

---

"Component one," Maya said. "Lin Wei. The baselines."

Lin Wei's tile brightened fractionally — she had leaned closer to the screen, and the laptop light caught more of her face. She shared her own screen, and the display split: Maya's brain scans on the left, Lin Wei's terminal on the right. Green text on black background. A directory listing.

```
/baseline-archive/mri-pre-bci/
|-- subject_001_2036-03-14.nii.gz
|-- subject_002_2036-03-17.nii.gz
|-- subject_003_2036-03-21.nii.gz
...
|-- subject_200_2036-09-08.nii.gz
\-- manifest.sha256
```

"Two hundred pre-BCI neural scans," Lin Wei said. "The original MK-V test cohort. Scanned in 2036, before Layer 5 was activated. Before the first write. This is the commit history. The last known good state of two hundred brains, preserved on an encrypted partition that CortexLink decommissioned three years ago because the data was classified as 'legacy diagnostic' and legacy diagnostic data is retained for seven years and then purged, and the purge was scheduled for January 2042, which is in five weeks, which means I copied these files at the last possible moment before they would have been destroyed by a retention policy that nobody wrote and nobody reviewed and nobody thought to question because retention policies are the kind of infrastructure that is invisible until the thing they're retaining turns out to be the most important dataset in the history of neuroscience."

She stopped. Took a breath. Lin Wei did not usually speak in paragraphs. The paragraph meant something.

"These baselines are the calibration data," she continued, steadier now. "Without them, Maya's interpretability tools can distinguish between native and BCI-written pathways — but they can't tell you what the native architecture *should* look like. They can show you the dormant roads. They can't show you where the roads were supposed to go. The baselines can. For these two hundred people — and only these two hundred — we have the before picture. The original architecture. The target state for rehabilitation."

"Two hundred people," Tomas said. "Out of nine hundred million."

"Two hundred people is a calibration set. You don't need the before picture for every brain. You need enough before pictures to build a model that can predict the before picture for any brain, given the after picture and the usage history and the demographic data. Two hundred is — " She paused. Did something in her head that Maya recognized as engineering math, the rapid estimation that produced answers good enough for architecture and bad enough for publication. "Two hundred is tight. It's not comfortable. But it's enough to train an inverse model. Map the BCI-written architecture backward to the probable pre-BCI state. Bayesian inference. The same math the BCI uses to personalize forward — we use it to personalize backward."

"You want to use the system's own math against it," Sara said.

"I want to use math. The math doesn't belong to anyone. CortexLink didn't invent Bayesian inference. They just used it first."

Henning's tile froze again. When it returned, he was shaking his head, though whether at the WiFi or the conversation was unclear.

"Can I ask a question that is not technical?" he said.

"Yes," Maya said.

"These two hundred people. The ones whose brains you scanned before the device was turned on. Do they know?"

Silence. Lin Wei's face on the screen was very still.

"No," she said. "They signed consent for diagnostic scanning as part of the MK-V trial. They did not consent to their pre-BCI neural architecture being used as calibration data for a rehabilitation protocol that addresses a problem they were not told existed when they signed the consent."

"Then we need new consent," Amara said. Her voice arrived through the lag, slightly after the moment it was needed, giving it the weight of something that had traveled a long distance to be said. "Before we use their data. Before we use anyone's data. They are people, not baselines."

"The data is anonymized," Lin Wei said.

"Anonymized data came from non-anonymous people. The anonymization protects us. It does not protect them. We need consent."

Lin Wei was quiet for three seconds. On the screen, her face did something complicated — a sequence of micro-expressions that moved through resistance, consideration, and arrival, like a person watching a compile error resolve into a different kind of correctness.

"You're right," she said. "We re-consent."

"Good," Amara said. The connection dropped. Her tile went black. Nobody spoke for seven seconds. The tile reappeared. Amara was fanning the tablet with her notebook. "I'm here. Continue."

---

"Component two," Maya said. "Mine. The interpretability-guided rehabilitation protocol."

She pulled up a diagram — a flowchart, drawn in the style of someone who had been building flowcharts for twenty years and had opinions about arrow placement that she would defend with her life.

"Step one: scan the patient. Full-brain structural and functional imaging with the 9.4-Tesla machine. The interpretability tools map every pathway in the prefrontal cortex and classify it: native, BCI-written, or dormant. We get a three-layer map. The lattice. The living architecture. And the ghost — the original pathways underneath, weakened but present."

"Step two: overlay the baseline model. Lin Wei's inverse model predicts what the patient's pre-BCI architecture should have looked like. We compare that prediction to the dormant pathways we can actually see. The overlap tells us which dormant pathways are recoverable — structurally intact enough to reactivate — and which have degraded beyond the threshold."

"Step three: design personalized cognitive exercises. This is the stroke rehab analogy in practice. For each recoverable dormant pathway, we design a task that forces the brain to use that specific pathway instead of the BCI-written one. Decision-making tasks that require divergent thinking — the kind of thinking the lattice optimizes away. Creative exercises. Problem-solving from novel angles. The exercises are different for every patient because the dormant architecture is different in every patient. This is not a curriculum. It is a prescription."

"Step four: iterate. Scan again after four weeks. Measure the dormant pathway activity. Has it increased? Are the synaptic connections strengthening? Is the myelin thickening? Adjust the exercises. Rescan. Repeat. The timeline is — " She hesitated. The scientist in her hated this next sentence. "Unknown. We don't know how long recovery takes. We don't have longitudinal data. My best estimate, based on stroke rehabilitation timelines and the degree of synaptic weakening we're seeing, is six months to two years for significant recovery. Some pathways may never fully reactivate. Some will."

"How do you know which ones?" Tomas asked.

"I don't. Not yet. The first cohort will tell us."

"And what happens to the BCI-written pathways?" Sara asked. "The lattice. The twenty-three percent. Do they go away?"

"No." Maya said the word the way you close a door — completely, without ambiguity. "The lattice stays. LTP is not reversible. What was written stays written. The knowledge stays. The skills stay. Everything the BCI gave them, they keep. What changes is the *balance*. Right now, the BCI-written pathways dominate because the native pathways are dormant. If we reactivate the native pathways, the brain has two systems — the engineered one and the original one. Both active. Both contributing. The patient doesn't lose the lattice. They gain back everything the lattice suppressed."

Lin Wei's face changed. The expression Maya had seen before — the engineer recognizing the architecture.

"It's not `git revert`," Lin Wei said.

Everyone waited.

"You can't revert to a previous commit on main. The history is written. LTP is a one-way operation. You can't uncommit what was committed. But you can branch." She typed something. On the shared screen, a terminal appeared:

```
$ git branch cognitive-diversity-restored
$ git checkout cognitive-diversity-restored
```

"A branch carries everything forward. The full commit history. Every write. Every lattice pathway. Nothing is deleted. But from the branch point forward, new commits go to the new branch. New growth. New pathways. The branch diverges from main. It doesn't erase main. It grows past it."

The room — the six-tiled, four-continent, half-buffering room — was quiet. The metaphor landed the way metaphors land when they're not metaphors at all but descriptions, when the comparison is not decorative but structural, when the thing being compared and the thing being compared to share the same architecture at the level that matters.

"That's the protocol," Maya said. "Not reversal. Branching."

---

"Component three," Maya said. "Amara."

The connection was holding. Amara's face was clear, the equatorial light behind her softened by a cloud that had moved across the sun — or by the tablet's processor throttling the display, which accomplished the same thing by a different mechanism. She set down the notebook she'd been using as a fan and picked it up as a notebook. Opened it. Did not look at the page. She knew what was on it.

"My students," she said.

"Your students," Maya confirmed.

"Thirty-six of them. Age range eleven to seventeen. None augmented. No BCIs. No neural interfaces of any kind. They learn from textbooks that are ten years old and a tablet that overheats and a teacher who makes mistakes and the world — the lake, the market, the rain, the fish, the questions they bring to class that I did not assign and cannot predict. They are the unaugmented population. They are the clean branch."

She paused. Looked directly at the camera. The lag was gone for a moment — the connection pure, the distance collapsed, her face in the frame with the clarity of someone standing in the room.

"I need to say something before we continue."

"Say it," Maya said.

"My students are not specimens. They are not a control group. They are not the absence of technology. They are the presence of themselves. When you say 'unaugmented population,' you are defining them by what they lack. They lack nothing. They have cognitive diversity that nine hundred million people have lost. They have original thinking that your protocol is trying to restore. They have what the world now needs. And I will share their data, and I will connect you with other teachers in Kisumu and Nairobi and Lagos and Accra and Dhaka and La Paz who have students like mine — unaugmented, untouched, thinking their own thoughts in their own ways — but you will not treat them as a baseline. You will treat them as teachers."

The room was quiet. Not the quiet of disagreement. The quiet of people hearing something they needed to hear and recognizing the need only after the hearing.

"Teachers," Maya repeated.

"Yes. They are not showing you what brains looked like before the BCI. They are showing you what brains look like when they are allowed to develop without interference. They are showing you the cognitive diversity you are trying to restore. They are the living model. Not the historical record — the living model. Treat them accordingly."

Henning's tile unfroze. He had been nodding. "She's right," he said. The two words carried the full weight of a man who had spent thirty years being right about something nobody listened to. He spent them without ceremony.

"Operationally," Lin Wei said — and the word was gentle, by Lin Wei's standards, which meant she understood what Amara had said and was building on it rather than redirecting away from it — "what does Amara's component provide?"

Maya answered. "Amara's network gives us something the baselines can't: a living reference population. Lin Wei's two hundred scans show us what brains looked like before the BCI. Amara's students show us what brains look like when they've been growing without the BCI — growing, developing, changing through normal experience. The baselines are a snapshot. Amara's population is a movie. We need both."

"And that's — *mira*, that's the thing," Tomas said. He leaned forward, into the frame, his face beside Sara's. "Amara's students don't all think the same way. That's the point. That's the whole — the lattice makes everyone converge, right? Same architecture, same valleys. But her students, they're all different. Every brain building its own paths. They're what we looked like. Before."

"My students would be pleased to hear you describe them as naturally divergent," Amara said. "Several of them have been called worse things by the education ministry."

Nobody laughed. Everybody understood.

"I will coordinate the reference population," Amara said. "Kisumu first. Then the network — twelve schools, six countries, all unaugmented. I will handle the consent. I will handle the ethics. I will handle the communication with the communities. This is not a data extraction. This is a collaboration. The communities participate, or we do not use their data. Those are my terms."

"Agreed," Maya said.

"Agreed," Lin Wei said.

Henning said nothing, which was his way of agreeing with things that didn't need to be argued about.

---

"Component four," Maya said. "Henning."

Henning looked at the camera the way he looked at a fuse box — directly, without romance, with the expectation that what he was about to see would need work.

"I'm not a neuroscientist," he said.

"We know," Maya said.

"I'm not a software engineer."

"Also known," Lin Wei said.

"I'm an electrician. I teach people to strip cable. And what I have to show you is a video of a man stripping cable, and if that sounds like it doesn't belong in a rehabilitation protocol, then you haven't been paying attention for the last eight months."

He reached off-camera. There was a sound — the thunk of something being set on the workbench, the dense sound of a tool with weight and purpose. He held it up to the camera. A cable stripper. The Knipex. Not Wilhelm's — the workshop's everyday model, red handles, the jaw slightly worn from ten thousand operations.

"Maya, your protocol is cognitive exercises. Thinking tasks. Designed to reactivate dormant pathways in the prefrontal cortex. The declarative system. The filing cabinet."

"Yes."

"That's one room. What about the other room?"

Maya was quiet. On the screen, her face went through the particular transition of a scientist hearing something obvious that she had not considered, which was not the same as hearing something wrong — it was the sound of a blind spot being illuminated, and the wince was not pain but the adjustment of the eyes.

"The procedural system," she said.

"The procedural system. The cerebellum. The basal ganglia. The room behind the panel. The room the BCI can't reach. Your protocol exercises the prefrontal cortex — but the people who come to you will have been using BCIs for years. Their procedural systems will be weak. Atrophied. Katharina Voss's scans showed it: BCI-trained apprentices had dim procedural pathways. The cerebellum barely activated during physical tasks. They were doing everything through the declarative system — the room the BCI *can* reach. The room the BCI has been furnishing for them."

He held up the cable stripper. Turned it in his hand. The fluorescent light caught the jaw, the hinge, the small geometric perfection of a tool designed to do one thing.

"Your rehabilitation protocol needs a physical component. Embodied learning. The hands. Not as supplementary. Not as optional enrichment. As core. Because the procedural system is the only system the BCI never compromised. It's the clean architecture. The firewall. And when you train someone through their hands — through repetition, through physical practice, through the body's own negotiation with the material — you build pathways in the cerebellum and basal ganglia that are inherently resistant to the lattice. Not because they're stronger. Because they're in a different room. The room the device can't enter."

He looked at the camera.

"I will demonstrate."

He lowered the camera — or tilted the laptop, more likely, given the sudden vertiginous swing of the image — until the frame showed his hands and the workbench. A length of NYM-J 3x1.5 cable lay on the bench. The Knipex was in his right hand. His left hand held the cable, thumb and forefinger positioned at the scoring point, the grip relaxed but specific, the product of thirty-nine years of repetition that had deposited the technique in a region of his brain no scanner needed to verify because the proof was in the motion itself.

He stripped the cable.

Not fast. Not showily. With the deliberate, narrated precision of a man who had taught this motion to three hundred and sixty apprentices and understood that teaching was transmitting — showing the structure rather than the speed, the process rather than the result.

"Watch the wrist," he said. "Not the hand. The wrist. The rotation. A quarter turn before the second cut. That is not in any manual. I learned it from my father, who learned it from his father, who learned it in this workshop in 1962. It is stored in my hands. It is personal. No other electrician rotates at this angle, because no other electrician has my father's hands filtered through my hands filtered through sixty-one years of holding things."

He set the cable down. Picked up a second length. Held the stripper out to the camera — offering it, the way you offer a tool to an apprentice, grip first, blade away.

"The protocol needs this. Not cable stripping specifically — I am not proposing that nine hundred million people learn to be electricians, though the world could use more electricians. The protocol needs embodied learning. Physical tasks. Hands on material. The body negotiating with the world without the device mediating the negotiation. Woodworking. Cooking. Drawing. Sewing. Playing an instrument. Any skill that requires the hands to learn what the hands can only learn through repetition. Any skill that builds in the room behind the panel."

He raised the camera back to his face. The expression was the one Maya had learned to read as Henning at his most serious — flat, direct, the face of a man who did not perform conviction but simply had it, the way a wall had load-bearing capacity.

"Your cognitive exercises reactivate the dormant declarative pathways. Good. Necessary. But if you don't also build the procedural system — the system the BCI left alone because it couldn't reach it — then you're rehabilitating half the brain. The half the device already owns. You need to rehabilitate the half it doesn't."

Silence. Six tiles. Four continents. The hum of a fNIRS machine cooling in Maya's lab, the hum of fluorescent lights in Henning's workshop, the hum of a tablet processor overheating in Amara's classroom, the hum of nothing in Lin Wei's safehouse, the hum of a Zurich street through an open window in Tomas and Sara's apartment. Five different hums, none of them harmonized, none of them convergent.

"He's right," Maya said. She said it the way she'd said *dormant* in her notebook at 2:47 AM — pressing the words into the surface with force, because certain findings deserved the resistance.

---

The argument started at minute forty-three and lasted until minute one hundred and nine, which was sixty-six minutes, which was longer than Henning preferred any meeting to last but shorter than any of them expected a disagreement about the future of nine hundred million brains to take.

It began with timelines.

"Six months minimum for significant pathway reactivation," Maya said. "Based on stroke rehab literature and the degree of synaptic weakening in our cohort."

"Six months is too slow," Lin Wei said. "The iteration logs show the BCI updating 6.5 times per day. Every day we don't intervene, the lattice deepens. Every day the dormant pathways don't activate, they weaken further. There's a window. I don't know how wide it is. But it's not indefinitely open."

"You can't rush neuroplasticity. The brain rebuilds at the speed the brain rebuilds. You can't iterate your way to faster biology."

"You can optimize the stimulus schedule. You can increase the frequency of the cognitive exercises. You can — "

"You can burn out the patient. Cognitive rehabilitation is not a sprint. Push too hard, too fast, and you get fatigue, frustration, and dropout. The stroke rehab literature is extremely clear on this."

"The stroke rehab literature is about seventy-year-olds recovering motor function. We're talking about thirty-year-olds recovering cognitive diversity. The populations are not comparable."

"The neurobiology is comparable. Synaptic strengthening follows the same time course regardless of the patient's age or the pathway's function. Hebb's rule doesn't care about demographics."

Tomas leaned forward. "What if the BCI is still active during rehabilitation?"

Both women stopped. Turned to his tile. The question hung in the call like a wire stripped but not yet terminated.

"Meaning?" Maya said.

"Meaning: the protocol assumes the patient has stopped using the BCI. But nine hundred million people can't stop using their BCIs simultaneously. Some will. Some won't. Some can't — the devices are integrated into their work, their education, their daily cognitive function. You're designing rehabilitation for a patient who may still be on the drug."

"Then the rehabilitation won't work," Lin Wei said. "You can't reactivate dormant pathways while the system is actively writing to the competing pathways. It's like physical therapy while the patient is still in zero gravity. You need the resistance. You need the BCI to be off."

"What about a taper?" Sara said. She had been writing in the Moleskine. She looked up. "Not on or off. A gradient. Has anyone studied what happens if you reduce usage over weeks instead of switching it off?"

"Is that medically sound?" Amara asked. Her voice arrived through the lag, landing in the brief silence after Sara's last word. "A taper? Has anyone studied BCI withdrawal?"

Silence. The particular silence of six people realizing that nobody had studied BCI withdrawal because until eight weeks ago nobody had acknowledged that the BCI was something you could withdraw from.

"No," Maya said. "Nobody has studied it. We'll need to design the taper protocol as part of the study. This is — " She rubbed her forehead. The jade pendant swung. "This is another unknown. Add it to the list."

"The list is getting long," Henning said.

"The list is the honest length," Maya said. "Short lists are lies."

The argument shifted to access. Who gets the protocol first. Who gets scanned. Who gets the rehabilitation exercises and the physical-training component and the four-week rescan and the personalized cognitive prescription.

"The heaviest users," Lin Wei said. "Highest lattice density. Most compromised. They're the most urgent cases."

"The heaviest users are also the most dependent," Tomas said. "The ones for whom the BCI is most integrated into daily function. They'll be the hardest to taper and the hardest to rehabilitate."

"Then we start with moderate users. Easier taper. Faster results. Proof of concept."

"You're selecting for success," Amara said. "You're choosing the patients most likely to recover so you can publish positive results. The people who need this most — the heaviest users, the most converged, the ones deepest in the valleys — you're putting them last."

"I'm not putting them last. I'm building the evidence base. You can't scale a protocol you haven't validated."

"You validated it on the easy cases. Then you present it to the funders and the regulators as if it works for everyone. Then when it doesn't work for the hardest cases — because you never tested it on the hardest cases — the protocol is already standard and the hardest cases are classified as treatment-resistant and nobody funds the next study because the first study said the protocol works. I have watched this happen in malaria, in tuberculosis, in every public health intervention that was designed in a laboratory and deployed in a community. You optimize for the publishable result. The unpublishable people wait."

The room — the call — was very quiet. Lin Wei's tile was motionless. Maya's pen had stopped moving. Henning was looking at the camera with the expression of a man who had just heard an electrician's truth spoken in a different language.

"We include heavy users in the first cohort," Maya said. "Not exclusively. But representatively. Amara is right. We don't get to choose who's easy."

"The first cohort will be messy," Lin Wei said.

"Good," Amara said. "Messy is honest."

"Messy is uninterpretable," Lin Wei said. "Messy data produces ambiguous results. Ambiguous results don't get published. Unpublished results don't change policy."

"Then publish the mess. Publish the ambiguity. Publish the honest finding that some people recover and some people don't and you don't yet know why. The world does not need a clean story. The world needs the truth."

"The world needs a protocol that works."

"The world needs a protocol that's fair."

They looked at each other through twelve thousand kilometers of fiber optic cable and the particular friction of two women who were both right in ways that could not be simultaneously optimized — because optimization was what had caused the problem, and the solution could not be built by the same logic that built the disease.

Sara wrote something in the Moleskine. She did not read it aloud. Tomas saw it. His eyebrows rose. He said nothing.

"We include both," Maya said. "Light users, moderate users, heavy users. Three arms. Same protocol. Different starting points. We publish whatever we find, including the failures. Especially the failures."

"Including my students?" Amara asked. "As the reference population?"

"As teachers," Maya said. "Your word. Not mine. Yours."

---

They argued about data control for twenty-two minutes. Who held the encryption keys. Where the scans were stored. Who could access the baseline archive. Who owned the rehabilitation data. Whether the protocol itself should be open-source or proprietary or somewhere in between.

Lin Wei wanted decentralized storage — the baselines on three servers on three continents, no single point of failure, no single point of access. Maya wanted centralized analysis — one team running the interpretability tools, one lab doing the scans, consistency of method across all subjects. Henning wanted to know who decided what happened to his apprentices' data if the project was shut down. Amara wanted community ownership — the data from her schools belonging to her schools, accessible to her schools, deletable by her schools.

They negotiated. Not smoothly. Not efficiently. With the particular friction of four people who had different fears and different priorities and different definitions of the word *safe*. Lin Wei's safety was cryptographic — encryption, redundancy, access control. Maya's safety was methodological — IRB approval, informed consent, peer review. Henning's safety was personal — the name and face of the person responsible, reachable by phone, answerable by name. Amara's safety was communal — the community's right to refuse, to withdraw, to burn the data and walk away.

They could not agree on a single architecture that satisfied all four definitions. They agreed on an architecture that partially satisfied each one, which was worse by every individual metric and better by the only metric that mattered: it was an architecture that four people from four continents could live inside without anyone's definition of safety being violated beyond their tolerance.

"This is not elegant," Lin Wei said.

"Elegance is a luxury," Amara said. "We can't afford luxury. We can afford honesty."

"Those are not mutually exclusive."

"In my experience, they usually are."

Henning's WiFi dropped for the third time. When he returned, the argument had moved on, and he asked no one to repeat what he'd missed, which was either stoic efficiency or the pragmatic assessment that whatever he'd missed would circle back, because arguments always circled back, the way apprentices always made the same mistake twice — the first time from ignorance, the second time from not quite having learned the lesson the first time taught.

---

The protocol took shape. Not in a single document — in four documents, shared in real time, edited simultaneously, the version control showing four cursors moving across four sections of the same file like four hands wiring four circuits in the same junction box. Lin Wei set up the repository. A private GitLab instance, hosted on a server in Iceland — a country she had chosen for its data protection laws, its renewable energy grid, and its complete lack of a BCI industry, which made it the geopolitical equivalent of Amara's classroom: unaugmented territory.

Maya wrote the clinical protocol. The scan procedure. The interpretability analysis pipeline. The cognitive exercise taxonomy — twelve categories of divergent thinking tasks, each mapped to specific dormant pathway clusters, each adjustable based on the four-week rescan.

Lin Wei wrote the data architecture. The baseline model. The inverse Bayesian inference engine. The encryption schema. The access control matrix — a four-key system, one key per contributor, any three of four required to access the full dataset, no single person able to unlock everything alone.

Amara wrote the community engagement framework. The consent protocol for the reference population. The communication templates in four languages. The principles — not guidelines, principles, because guidelines could be bent and principles could not: *Participation is voluntary. Withdrawal is unconditional. Data belongs to the source. Results are shared with the community before publication.*

Henning wrote the physical training module. Twenty exercises. Each one an embodied learning task — cable stripping, wood jointing, bread kneading, compass drawing, sewing a button, tuning a string, folding a map. Each one designed to activate the cerebellum and basal ganglia through repetitive physical practice. Each one annotated with his handwritten notes, which Lin Wei had to transcribe because Henning had photographed them with his phone and the photographs were sideways and slightly blurry, because Henning's relationship with digital technology was the relationship of a man who knew exactly what current was doing inside the device and found the device wanting.

"Exercise seven," Lin Wei read aloud, squinting at the photograph on her screen. "Wire stripping. NYM-J 3x1.5. Strip to twenty millimeters. Repeat — " She tilted her head. "Henning, is that a four or a nine?"

"Forty."

"Repeat forty times. Note: the patient will want to stop at fifteen. Do not let them. The cerebellum learns between repetition twenty and repetition forty. The first twenty are noise. The learning is in the boredom."

"The learning is in the boredom," Maya repeated. She wrote it in her notebook. Underlined it.

"That's not a very motivating instruction for a rehabilitation protocol," Tomas said.

"Motivation is for the first repetition," Henning said. "Competence is for the fortieth. I did not say the patient would be motivated. I said they would learn."

---

At minute one hundred and thirty-one, the shared document was thirty-seven pages. Four sections. Four authors. Three hundred and twelve version control commits, which Lin Wei had been tracking because Lin Wei tracked everything, and which she noted with something that was almost — not quite, but almost — amusement.

"Three hundred and twelve commits," she said. "In two hours. CortexLink's policy team took four months to produce a twelve-page position paper on neural ethics. We have written a rehabilitation protocol in a single session."

"Their position paper was not honest," Amara said.

"Their position paper was very well formatted," Lin Wei said, and the almost-amusement became actual amusement, briefly, a flash of expression that crossed her face the way light crossed the surface of her jade plant — quickly, warmly, gone.

"We need a name," Maya said. "For the protocol. For the branch."

"Call it what it is," Henning said. "Rehabilitation."

"That's a medical term. This isn't purely medical. It's cognitive, physical, communal, technical. It's all four."

"Then call it all four."

"That's a terrible name."

"I wasn't proposing a name. I was proposing honesty."

Lin Wei typed something. On the shared screen, in the terminal window she'd kept open throughout the call, three lines appeared:

```
$ git branch cognitive-diversity-restored
$ git checkout cognitive-diversity-restored
Switched to a new branch 'cognitive-diversity-restored'
```

"That is the name," she said. "The branch name. It says what the branch does. It restores what was lost. Cognitive diversity. The thing that was converged. The thing we are unconverging."

"That's a lot of words for *starting over*," Henning said.

Maya shook her head. The jade pendant swung. "We're not starting over. Starting over would mean losing everything the BCI built — the knowledge, the skills, the enhanced capacity. We're not losing any of that. We're growing forward. The branch carries the full commit history. Everything that was written stays written. But from this point forward, the growth is different. Divergent. Individual. The lattice stays. The diversity grows around it."

"Like a tree growing around a fence," Tomas said.

"Like a tree growing around a fence," Maya confirmed. "The fence doesn't disappear. The tree incorporates it. Grows past it. Becomes something that includes the fence but is not defined by it."

Amara's tile had been stable for eleven minutes — the longest unbroken connection of the call. Her face was clear in the frame, the equatorial light behind her golden now, late afternoon, the sun dropping toward the lake. Her students had been audible in the background for the last twenty minutes — the sounds of a school at the end of the day, chairs scraping, voices rising, the acoustic of thirty-six young people released from sitting still, their energy filling the corridor outside her classroom the way water fills a channel when the gate is lifted.

"My students have been growing forward the whole time," Amara said. Quietly. Not as argument. As fact. The kind of fact that did not need emphasis because it was load-bearing, because it held up the rest of the structure, because without it the protocol was a treatment for a disease and with it the protocol was a restoration of something that had always existed and had been, in thirty-six classrooms and twelve schools and six countries and a billion unaugmented minds across the world, growing — unassisted, unoptimized, unmeasured, unnoticed — this entire time.

"They just didn't know the world would need them to."

---

The call ended at 16:22 UTC. Two hours and twenty-two minutes. The shared document was forty-one pages. Four sections. Four authors. Three hundred and forty-eight commits. A protocol. A rehabilitation framework with four components — baselines, interpretability-guided cognitive exercises, community reference populations, embodied physical training — each one irreplaceable, each one built by a person whose expertise could not have been substituted by any of the other three, each one necessary in the way that a conductor in a cable is necessary: remove one and the circuit doesn't degrade gracefully. It opens. It stops.

Lin Wei pushed the final commit. The terminal displayed the hash — a forty-character string of hexadecimal that represented, in the language of version control, the state of the document at this exact moment: complete, imperfect, containing everything they knew and nothing they didn't, a snapshot of four minds working together across four continents and producing something that none of them could have produced alone.

She typed one more line:

```
$ git log --oneline -1
a4f7e2d cognitive-diversity-restored: initial protocol draft
```

"Pushed," she said.

"To where?" Henning asked.

"To a server in Iceland. Backed up to a second server in New Zealand. Mirrored to a third in Uruguay. Three continents. Three jurisdictions. Three keys."

"And the fourth key?"

"With Amara. In Kisumu. On a USB drive. In a place the internet cannot reach." A pause. "That's the backup the backup can't lose."

Sara closed her Moleskine. She had filled seven pages. She would not publish any of it until the protocol was tested, until the first cohort was scanned and rehabilitated and rescanned, until the data said something that the world could act on. But the record existed. Ink on paper. The oldest technology. The one that didn't need a server or a key or a connection that held for seven minutes and then didn't.

Tomas pressed his fingers behind his ear. The patch was warm. The device was running. It was always running. But the protocol existed now — a document, version-controlled, four contributors, stored on three servers and a USB drive, describing a method by which the thing the device had written might be grown past, grown around, grown beyond, by the same plasticity the device had used to write it, turned now to a different purpose, aimed now at a different branch.

Not reversal. Not erasure. Not the fantasy of going back to before. The honest, difficult, unoptimizable work of going forward differently.

"Same time next week?" Maya asked.

"If my WiFi holds," Henning said.

"If my tablet survives," Amara said.

"If I'm still at this address," Lin Wei said, and it was not a joke, and everyone understood that it was not a joke, and nobody asked the question that the not-joke contained.

"Next week," Sara said.

Four screens went dark. One by one — Henning first, because he had apprentices arriving in twelve minutes and the Moccamaster needed filling. Then Amara, her tile dissolving into pixels and then black, the connection releasing her face the way the lake released the light at sunset, gradually, then all at once. Then Lin Wei, the safehouse going dark behind her dark screen, the laptop closing, the encryption engaging, the woman and the data disappearing into the silence of a person who had built something that broke the world and was now building something that might help the world grow past the break.

Maya was last. She sat in Room 314, in the lab, in front of the corkboard with its mosaic of scans and string and the printout of Sara's headline — **Your BCI Is Writing to Your Brain** — still pinned in the upper left corner, still true, still the sentence that had started everything. The fMRI machine hummed in the next room. The cooling system cycled. The jade pendant rested against her throat, warm from her skin, the green of it catching the fluorescent light the way it always did, a small constant in a room full of variables.

She opened the shared document. Forty-one pages. Four voices. She scrolled to the bottom, past Lin Wei's data architecture and her own clinical protocol and Amara's community principles and Henning's forty-repetition cable-stripping exercise, to the line Lin Wei had added at the very end, after the final commit, after the call had ended, in the quiet of a safehouse in a city no one else on the call could name:

*Branch created. Four contributors. Version 0.1. This document is a draft. It is incomplete. It contains errors. It represents the best thinking of four people who disagree about nearly everything except the necessity of this work. It will be revised. It will be argued over. It will be tested against reality and found wanting in ways we cannot yet predict. It is a beginning. Beginnings are not elegant. They are necessary.*

Maya read it twice. She picked up her pen. In her spiral-bound notebook, in her left-leaning hand, she wrote:

*The protocol exists. It is not enough. It is a start.*

She closed the notebook. She did not close the laptop. On the screen, the shared document sat in its repository, version-controlled, backed up, encrypted, distributed across three continents and a USB drive in Kisumu — a small, imperfect, necessary thing, built by four people who had never been in the same room, who would probably never be in the same room, who had argued for sixty-six minutes about timelines and access and data control and the meaning of the word *fair*, and who had, despite the arguments or because of them, produced something that none of them could have produced alone.

The fMRI machine hummed. The cooling system cycled. Outside, the Midwest winter pressed against the windows of Room 314, and the parking lot was empty, and the campus was dark, and the protocol existed, and the branch was created, and the work — the long, slow, unoptimizable, stubbornly human work of growing past what had been written — was about to begin.
