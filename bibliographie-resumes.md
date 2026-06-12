# Résumés de la bibliographie (`references.bib`)

Fiche de synthèse des 12 références du mémoire : résumé, citations marquantes
(dans la langue d'origine) et endroit où chaque référence est mobilisée dans le
texte.

---

## 1. Cunningham, 1992 — *The WyCash Portfolio Management System* (`cunningham1992`)

**Type :** rapport d'expérience OOPSLA '92. **Texte fondateur** de la métaphore
de la dette technique.

Ward Cunningham, en décrivant le développement d'un logiciel de gestion de
portefeuille financier, forge l'analogie entre code imparfait livré rapidement
et emprunt financier : la dette permet d'aller plus vite, mais chaque minute
passée sur du code « pas tout à fait correct » constitue un intérêt à payer,
jusqu'au remboursement par réécriture.

> « Shipping first time code is like going into debt. A little debt speeds
> development so long as it is paid back promptly with a rewrite. […] The
> danger occurs when the debt is not repaid. Every minute spent on
> not-quite-right code counts as interest on that debt. »

**Mobilisée dans le mémoire :** chapitre 4, section « Définition et métaphore »
— origine de la métaphore principal/intérêts qui structure tout le cadre
conceptuel.

---

## 2. Fowler, 2018 — *Refactoring: Improving the Design of Existing Code* (2e éd.) (`fowler2018`)

**Type :** livre de référence (Addison-Wesley).

L'ouvrage canonique sur le refactoring : l'amélioration de la structure interne
d'un code **à comportement externe constant**, par une succession de
transformations petites, sûres et nommées (catalogue de refactorings). Fowler y
insiste sur le rôle des tests comme préalable et sur le refactoring comme
pratique continue plutôt que comme chantier ponctuel.

> « Refactoring is the process of changing a software system in a way that
> does not alter the external behavior of the code yet improves its internal
> structure. »

> « Any fool can write code that a computer can understand. Good programmers
> write code that humans can understand. »

**Mobilisée dans le mémoire :** chapitre 4, deux fois — comme nom du
« remboursement » de la dette (section Définition), puis comme deuxième levier
de réduction (section Leviers).

---

## 3. Feathers, 2004 — *Working Effectively with Legacy Code* (`feathers2004`)

**Type :** livre de référence (Prentice Hall).

Feathers redéfinit le code *legacy* non par son âge ou sa technologie, mais par
**l'absence de tests** : sans filet de non-régression, toute modification est
un pari. Le livre fournit un catalogue de techniques pour briser les
dépendances et insérer des tests dans un code qui n'a pas été conçu pour être
testable (*seams*, *sprout method*, *wrap class*…).

> « To me, legacy code is simply code without tests. »

> « Code without tests is bad code. It doesn't matter how well written it is.
> […] With tests, we can change the behavior of our code quickly and
> verifiably. »

**Mobilisée dans le mémoire :** chapitre 4 (premier levier : le test
automatisé) et chapitre 7 / tâche 3 (le framework de test comme application
directe de ce levier).

---

## 4. Humble & Farley, 2010 — *Continuous Delivery* (`humble2010`)

**Type :** livre de référence (Addison-Wesley).

L'ouvrage fondateur du déploiement continu : automatiser l'intégralité de la
chaîne allant du commit à la production (*deployment pipeline*), afin que la
livraison devienne un non-événement répétable, plutôt qu'un rituel risqué. La
thèse centrale : plus une opération est douloureuse, plus il faut la pratiquer
souvent pour en résorber le coût.

> « If it hurts, do it more frequently, and bring the pain forward. »

**Mobilisée dans le mémoire :** chapitre 4, troisième levier de réduction
(automatisation de la chaîne de livraison), en lien avec les tâches 2 et 6 sur
la chaîne de compilation.

---

## 5. Fowler, 2009 — *Technical Debt Quadrant* (`fowler2009`)

**Type :** billet de blog (bliki, martinfowler.com).

Fowler classe la dette selon deux axes : **délibérée / accidentelle**
(*deliberate / inadvertent*) et **prudente / imprudente** (*prudent /
reckless*). La distinction utile n'est pas dette ou absence de dette, mais
dette prudente ou imprudente : une dette délibérée et prudente est un outil de
pilotage légitime ; la dette dangereuse est celle qui s'accumule à l'insu de
tous.

> « The useful distinction isn't between debt or non-debt, but between prudent
> and reckless debt. »

**Mobilisée dans le mémoire :** chapitre 4, section « Définition et
métaphore » — pour situer la dette des deux entreprises dans le quadrant
(dette héritée, accidentelle et imprudente).

---

## 6. Kruchten, Nord & Ozkaya, 2012 — *Technical Debt: From Metaphor to Theory and Practice* (`kruchten2012`)

**Type :** article (IEEE Software, vol. 29, n° 6).

Article qui fait passer la dette technique du statut de simple métaphore à
celui de **cadre d'analyse** pour la recherche et la pratique. Les auteurs
proposent le « technical debt landscape » : la dette recouvre des éléments
invisibles de qualité interne (architecture, structure), à distinguer des
défauts visibles et des fonctionnalités manquantes ; toute dette n'est pas
mauvaise, c'est un compromis d'investissement à gérer explicitement.

> « Technical debt is a design or construction approach that's expedient in the
> short term but that creates a technical context in which the same work will
> cost more to do later. »

**Mobilisée dans le mémoire :** chapitre 4, section « Définition et
métaphore » — pour le raffinement de la métaphore en cadre d'analyse et l'idée
que toute dette n'est pas une faute.

---

## 7. Pavlič, Hliš, Heričko & Beranič, 2022 — *The Gap between the Admitted and the Measured Technical Debt* (`pavlic2022`)

**Type :** article empirique (Applied Sciences, 12(15):7482, DOI
10.3390/app12157482).

Étude empirique sur 14 logiciels en production comparant la dette
**auto-déclarée** par les équipes (*self-admitted technical debt*) et la dette
**mesurée** par les outils d'analyse. Résultat : un écart significatif entre
les deux. Les outils excellent à détecter la dette de code de bas niveau
(violations de règles), mais passent à côté de la dette liée au domaine et aux
décisions de conception de haut niveau ; les auteurs mettent en garde contre
une confiance exclusive dans la mesure outillée.

> « The outcomes show clearly the significant difference in the technical debt
> reported by the two methods. We urge development and quality-assurance teams
> not to rely on technical debt measurement alone. »

**Mobilisée dans le mémoire :** chapitre 4, section « Enjeux business » — la
dette mesurée excède fréquemment la dette reconnue par les équipes.

---

## 8. Kanita, 2022 — *Modèle explicatif du phénomène de la dette technique dans le contexte Agile* (`kanita2022`)

**Type :** revue de littérature (ResearchGate), en français.

Revue de littérature mobilisant la méthode BIBGT (approche bibliométrique
combinée à la théorie enracinée) pour construire un **modèle explicatif de la
production de dette technique dans les contextes Agile et DevOps** : la
pression du rythme de livraison itératif, les arbitrages court terme et les
pratiques d'équipe y sont identifiés comme facteurs générateurs de dette.

**Mobilisée dans le mémoire :** chapitre 4, section « Enjeux business » — pour
les modèles explicatifs de la production de dette en contexte Agile/DevOps.

---

## 9. Tamburri, Kruchten, Lago & van Vliet, 2015 — *Social Debt in Software Engineering: Insights from Industry* (`tamburri2015`)

**Type :** article empirique en accès libre (Journal of Internet Services and
Applications, 6:10, DOI 10.1186/s13174-015-0024-6).

Étude de cas qualitative dans une grande ESN (~3 000 personnes, secteur
aéronautique) qui définit la **dette sociale** par analogie avec la dette
technique : le surcoût engendré par des relations sociales et
organisationnelles dégradées. Les auteurs montrent que dette sociale et dette
technique sont fortement corrélées et se composent mutuellement, et
identifient des **« community smells »** (équivalents sociaux des code
smells) : *prima-donnas* (équipe legacy imperméable au changement),
*leftover-techie* (techniciens de maintenance isolés et démotivés), *sharing
villainy* (partage de connaissance dégradé), etc., avec leurs stratégies de
mitigation.

> « Social debt can be thought as: "not quite right development community –
> which we postpone making right". »

> « We learned that social debt is strongly correlated with technical debt and
> both forces should be reckoned with together during the software process. »

**Mobilisée dans le mémoire :** chapitre 4, sous-section « L'enjeu social du
traitement de la dette » — ancre dans la littérature le constat que la
dimension humaine du traitement de la dette est un enjeu à part entière.

---

## 10. Olsson, Risfelt, Besker, Martini & Torkar, 2021 — *Measuring Affective States from Technical Debt* (`olsson2021`)

**Type :** article empirique (Empirical Software Engineering, 26:105, DOI
10.1007/s10664-021-09998-w).

Expérience **psychoempirique** (40 praticiens de 12 entreprises, 200 points de
mesure, modèles bayésiens multi-niveaux) mesurant les états affectifs
(valence, excitation, dominance) de développeurs confrontés à du code porteur
de *design smells*. Résultats : preuve statistique forte que certains smells
(notamment les dépendances cycliques) provoquent un déplaisir mesurable ; le
volet qualitatif montre que la dette est psychologiquement éprouvante, génère
de l'anxiété et peut rendre les praticiens réticents à intervenir dans le code
concerné (procrastination, appréhension, risque de burnout). Nuance notable :
rembourser la dette procure au contraire des affects positifs — c'est la dette
sur laquelle on n'a pas de prise qui mine le moral.

> « Technical debt activates a substantial portion of the emotional spectrum
> and is psychologically taxing. »

> Finding F13 : « When faced with high (overwhelming) levels of TD,
> practitioners will be reluctant to perform their work tasks. »

**Mobilisée dans le mémoire :** chapitre 4, sous-section « L'enjeu social du
traitement de la dette » — appui expérimental direct de l'observation de
terrain sur la perte de motivation face au code legacy.

---

## 11. Textualize — *Textual Documentation* (`textual-doc`)

**Type :** documentation officielle (https://textual.textualize.io/).

Documentation du framework Python **Textual**, qui permet de construire des
interfaces utilisateur riches dans le terminal (TUI) avec un modèle inspiré du
web : widgets, layout CSS, réactivité événementielle.

**Mobilisée dans le mémoire :** chapitre 5 / tâche 1 — choix de Textual pour
l'interface TUI de l'outil Grafana.

---

## 12. Pytest Development Team — *pytest Documentation* (`pytest-doc`)

**Type :** documentation officielle (https://docs.pytest.org/).

Documentation du framework de test Python **pytest** : découverte automatique
des tests, assertions natives, fixtures pour la gestion des dépendances et
paramétrisation. C'est le socle d'exécution sur lequel s'appuient des
écosystèmes de test entiers.

**Mobilisée dans le mémoire :** chapitre 7 / tâche 3 — le framework de test
maison est bâti comme une surcouche de pytest.

---

## 13. Stryker (IBM Think Insights), 2026 — *Réduire la dette technique en 2026* (`ibm-llm`)

**Type :** article de vulgarisation industrielle
(https://www.ibm.com/fr-fr/think/insights/reduce-technical-debt).

Article de veille d'IBM sur les stratégies actuelles de réduction de la dette
technique, dont le recours à l'**IA générative** (LLM) pour assister la
production et la modernisation de code — avec le rappel que le code généré
doit être relu et testé comme n'importe quel autre.

**Mobilisée dans le mémoire :** chapitre 9 / tâche 5 — mise en perspective du
recours aux LLM pour produire du code lors du portage.
