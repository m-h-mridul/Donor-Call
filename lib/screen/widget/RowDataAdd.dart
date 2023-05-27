// ignore_for_file: file_names, unused_local_variable


//**here static data add  */
import 'healthtips.dart';

class RowDataAdd {
  List<HealthTips> allhealthtip = [];

  //**add item in list of all health tips */
  addhealthlist() {
    HealthTips healthTipList = HealthTips(
      headline: '24 Health and Nutrition Tips That Are Actually Evidence-Based',
      headImage: 'assets/healthtips/22health.PNG',
    );

    healthTipList.item = [
      ItemDiscribtion(
          name: '1. Limit sugary drinks',
          image: 'no image',
          discribtion: '''
Sugary drinks like sodas, fruit juices, and sweetened teas are the primary source of added sugar in the American diet (1Trusted Source).

Unfortunately, findings from several studies point to sugar-sweetened beverages increasing risk of heart disease and type 2 diabetes, even in people who are not carrying excess body fat (2Trusted Source).

Sugar-sweetened beverages are also uniquely harmful for children, as they can contribute not only to obesity in children but also to conditions that usually do not develop until adulthood, like type 2 diabetes, high blood pressure, and non-alcoholic fatty liver disease (3Trusted Source, 4Trusted Source, 5Trusted Source).
''',
          suggetion: '''Healthier alternatives include:

* water
* unsweetened teas
* sparkling water
* coffee
'''),
      ItemDiscribtion(
          image: 'no image',
          name: '2. Eat nuts and seeds',
          discribtion:
              '''Some people avoid nuts because they are high in fat. However, nuts and seeds are incredibly nutritious. They are packed with protein, fiber, and a variety of vitamins and minerals (6Trusted Source, 7Trusted Source).

Nuts may help you lose weight and reduce the risk of developing type 2 diabetes and heart disease (8Trusted Source).

Additionally, one large observational study noted that a low intake of nuts and seeds was potentially linked to an increased risk of death from heart disease, stroke, or type 2 diabetes (9Trusted Source).''',
          suggetion: '''not find
'''),

//**3 */
      ItemDiscribtion(
          name: '3. Avoid ultra-processed foods',
          image: 'not find',
          discribtion:
              '''Ultra-processed foods are foods containing ingredients that are significantly modified from their original form. They often contain additives like added sugar, highly refined oil, salt, preservatives, artificial sweeteners, colors, and flavors as well (10Trusted Source).''',
          suggetion: '''Examples include:

snack cakes
fast food
frozen meals
canned foods
chips
\n
Ultra-processed foods are highly palatable, meaning they are easily overeaten, and activate reward-related regions in the brain, which can lead to excess calorie consumption and weight gain. Studies show that diets high in ultra-processed food can contribute to obesity, type 2 diabetes, heart disease, and other chronic conditions (11Trusted Source, 12Trusted Source, 13Trusted Source, 14Trusted Source, 15Trusted Source).

In addition to low quality ingredients like inflammatory fats, added sugar, and refined grains, they’re usually low in fiber, protein, and micronutrients. Thus, they provide mostly empty calories.
'''),
      ItemDiscribtion(
        image: 'not find',
        name: '3. Don’t fear coffee',
        discribtion: '''
Despite some controversy over it, coffee is loaded with health benefits.

It’s rich in antioxidants, and some studies have linked coffee intake to longevity and a reduced risk of type 2 diabetes, Parkinson’s and Alzheimer’s diseases, and numerous other illnesses (16Trusted Source, 17Trusted Source, 18Trusted Source, 19Trusted Source).

The most beneficial intake amount appears to be 3–4 cups per day, although pregnant people should limit or avoid it completely because it has been linked to low birth weight (18Trusted Source).

However, it’s best to consume coffee and any caffeine-based items in moderation. Excessive caffeine intake may lead to health issues like insomnia and heart palpitations. To enjoy coffee in a safe and healthy way, keep your intake to less than 4 cups per day and avoid high-calorie, high-sugar additives like sweetened creamer.
''',
        suggetion: '''not find''',
      ),
      ItemDiscribtion(
          image: 'not find',
          name: '4. Eat fatty fish',
          discribtion:
              '''Fish is a great source of high-quality protein and healthy fat. This is particularly true of fatty fish, such as salmon, which is loaded with anti-inflammatory omega-3 fatty acids and various other nutrients (20Trusted Source, 21Trusted Source).

Studies show that people who eat fish regularly have a lower risk for several conditions, including heart disease, dementia, and inflammatory bowel disease (22Trusted Source, 23Trusted Source, 24Trusted Source).
''',
          suggetion: 'not find'),
      ItemDiscribtion(
        image: 'not find',
        name: '5. Get enough sleep',
        discribtion:
            '''The importance of getting enough quality sleep cannot be overstated.

Poor sleep can drive insulin resistance, can disrupt your appetite hormones, and reduce your physical and mental performance (25Trusted Source, 26Trusted Source, 27Trusted Source).

What’s more, poor sleep is one of the strongest individual risk factors for weight gain and obesity. People who do not get enough sleep tend to make food choices that are higher in fat, sugar, and calories, potentially leading to unwanted weight gain (28Trusted Source, 29Trusted Source).
''',
        suggetion: 'not find',
      ),
      ItemDiscribtion(
        name: '6. Feed your gut bacteria',
        image: 'not find',
        discribtion:
            '''The bacteria in your gut, collectively called the gut microbiota, are incredibly important for overall health.

A disruption in gut bacteria is linked to some chronic diseases, including obesity and a myriad of digestive problems (30Trusted Source, 31Trusted Source).

Good ways to improve gut health include eating probiotic foods like yogurt and sauerkraut, taking probiotic supplements — when indicated — and eating plenty of fiber. Notably, fiber serves as a prebiotic, or a food source for your gut bacteria (32Trusted Source, 33Trusted Source).
''',
        suggetion: 'not find',
      ),
      ItemDiscribtion(
          image: 'not find',
          name: '7. Stay hydrated',
          discribtion:
              '''Hydration is an important and often overlooked marker of health. Staying hydrated helps ensure that your body is functioning optimally and that your blood volume is sufficient (34Trusted Source).

Drinking water is the best way to stay hydrated, as it’s free of calories, sugar, and additives.

Although there’s no set amount that everyone needs per day, aim to drink enough so that your thirst is adequately quenched (35Trusted Source).
''',
          suggetion: 'not find'),
      ItemDiscribtion(
          name: '8. Don’t eat heavily charred meats',
          image: 'not find',
          discribtion: '''
Meat can be a nutritious and healthy part of your diet. It’s very high in protein and a rich source of nutrients (36Trusted Source).

However, problems occur when meat is charred or burnt. This charring can lead to the formation of harmful compounds that may increase your risk for certain cancers (37Trusted Source).

When you cook meat, try not to char or burn it. Additionally limit your consumption of red and processed meats like lunch meats and bacon as these are linked to overall cancer risk and colon cancer risk (38Trusted Source, 39Trusted Source, 40Trusted Source, 41Trusted Source).
''',
          suggetion: 'not find'),
      ItemDiscribtion(
          name: '9. Avoid bright lights before sleep',
          image: 'not find',
          discribtion:
              '''When you’re exposed to bright lights — which contain blue light wavelengths — in the evening, it may disrupt your production of the sleep hormone melatonin (42Trusted Source).

Some ways to help reduce your blue light exposure is to wear blue light blocking glasses — especially if you use a computer or other digital screen for long periods of time — and to avoid digital screens for 30 minutes to an hour before going to bed (43Trusted Source).

This can help your body better produce melatonin naturally as evening progresses, helping you sleep better.
''',
          suggetion: 'not find'),
      ItemDiscribtion(
          name: '10. Take vitamin D if you’re deficient',
          image: 'not find',
          discribtion:
              '''Most people do not get enough vitamin D. While these widespread vitamin D inadequacies are not imminently harmful, maintaining adequate vitamin D levels can help to optimize your health by improving bone strength, reducing symptoms of depression, strengthening your immune system, and lowering your risk for cancer (44Trusted Source, 45Trusted Source, 46Trusted Source, 47Trusted Source).

If you do not spend a lot of time in the sunlight, your vitamin D levels may be low.

If you have access, it’s a great idea to have your levels tested, so that you can correct your levels through vitamin D supplementation if necessary.
''',
          suggetion: 'not find'),

      ItemDiscribtion(
          name: '11. Eat plenty of fruits and vegetables',
          image: 'not',
          discribtion:
              '''Vegetables and fruits are loaded with prebiotic fiber, vitamins, minerals, and antioxidants, many of which have potent health effects.

Studies show that people who eat more vegetables and fruits tend to live longer and have a lower risk for heart disease, obesity, and other illnesses (48Trusted Source, 49Trusted Source).''',
          suggetion: 'not'),
      ItemDiscribtion(
          name: '12. Eat adequate protein',
          image: 'not',
          discribtion:
              '''Eating enough protein is vital for optimal health, as it provides the raw materials your body needs to create new cells and tissues (50Trusted Source).

What’s more, this nutrient is particularly important for maintenance of a moderate body weight.

High protein intake may boost your metabolic rate — or calorie burn — while making you feel full. It may also reduce cravings and your desire to snack late at night (51Trusted Source, 52Trusted Source).
''',
          suggetion: '''not
'''),

      ///**addd  14 item */
      ItemDiscribtion(
          name: '13. Get moving',
          image: 'not',
          discribtion:
              '''Doing aerobic exercise, or cardio, is one of the best things you can do for your mental and physical health.

It’s particularly effective at reducing belly fat, the harmful type of fat that builds up around your organs. Reduced belly fat may lead to major improvements in your metabolic health (53Trusted Source).

According to the Physical Activity Guidelines for Americans, we should strive for at least 150 minutes of moderate intensity activity each week (54Trusted Source).
''',
          suggetion: 'not'),
      ItemDiscribtion(
          name: '14. Don’t smoke or use drugs, and only drink in moderation',
          discribtion:
              '''Smoking, harmful use of drugs, and alcohol abuse can all seriously negatively affect your health.

If you do any of these actions, consider cutting back or quitting to help reduce your risk for chronic diseases.

There are resources available online — and likely in your local community, as well — to help with this. Talk with your doctor to learn more about accessing resources.
  '''),
      ItemDiscribtion(
          name: '15. Use extra virgin olive oil',
          discribtion:
              '''Extra virgin olive oil is one of the healthiest vegetable oils you can use. It’s loaded with heart-healthy monounsaturated fats and powerful antioxidants that have anti-inflammatory properties (55Trusted Source, 56Trusted Source).

Extra virgin olive oil may benefit heart health, as people who consume it have a lower risk for dying from heart attacks and strokes according to some evidence (57Trusted Source).
'''),
      ItemDiscribtion(
          name: '16. Minimize your sugar intake',
          discribtion:
              '''Added sugar is extremely prevalent in modern food and drinks. A high intake is linked to obesity, type 2 diabetes, and heart disease (1Trusted Source, 2Trusted Source, 58Trusted Source).

The Dietary Guidelines for Americans recommend keeping added sugar intake below 10% of your daily calorie intake, while the World Health Organization recommends slashing added sugars to 5% or less of your daily calories for optimal health (59Trusted Source, 60Trusted Source).
'''),
      ItemDiscribtion(name: '17. Limit refined carbs', discribtion: '''
Not all carbs are created equal.

Refined carbs have been highly processed to remove their fiber. They’re relatively low in nutrients and may harm your health when eaten in excess. Most ultra-processed foods are made from refined carbs, like processed corn, white flour, and added sugars.

Studies show that a diet high in refined carbs may be linked to overeating, weight gain, and chronic diseases like type 2 diabetes and heart disease (61Trusted Source, 62Trusted Source, 63Trusted Source, 64Trusted Source).
'''),
      ItemDiscribtion(
          name: '18. Don’t fear saturated fat',
          discribtion:
              '''Saturated fat has been controversial, and in the past, it was thought to be a major contributor to heart disease (65Trusted Source).

While it’s true that saturated fat raises cholesterol levels, it also raises HDL (good) cholesterol and reduces small, dense LDL (bad) cholesterol particles, which is linked to a lower risk of heart disease (66Trusted Source).

Emerging research has questioned the association between saturated fat intake and heart disease. It appears that saturated fat may actually have no impact or a slightly positive impact on overall health as long as your overall diet is healthy and nutritionally balanced (67Trusted Source, 68Trusted Source).
'''),
      ItemDiscribtion(
          name: '19. Lift heavy weights',
          discribtion:
              '''Strength and resistance training are some of the best forms of exercises you can do to strengthen your muscles and improve your body composition.

It may also lead to important improvements in metabolic health, including improved insulin sensitivity — meaning your blood sugar levels are easier to manage — and increases in your metabolic rate, or how many calories you burn at rest (69Trusted Source, 70Trusted Source).

If you do not have weights, you can use your own bodyweight or resistance bands to create resistance and get a comparable workout with many of the same benefits.

The Physical Activity Guidelines for Americans recommends resistance training twice per week
'''),
      ItemDiscribtion(
          name: '20. Avoid artificial trans fats',
          discribtion:
              '''Artificial trans fats are harmful, man-made fats that are strongly linked to inflammation and heart disease (72Trusted Source).

Avoiding them should be much easier now that they have been completely banned in the United States and many other countries. Note that you may still encounter some foods that contain small amounts of naturally occurring trans fats, but these are not associated with the same negative effects as artificial trans fats (73Trusted Source).\n'''),
      ItemDiscribtion(
          name: '21. Nurture your social relationships',
          discribtion:
              '''Social relationships — with friends, family, and loved ones you care about — are important not only for your mental well-being but also your physical health.

Studies show that people who have close friends and family are healthier and live much longer than those who do not (77Trusted Source, 78Trusted Source).'''),
      ItemDiscribtion(
          name: '22. Use plenty of herbs and spices',
          discribtion:
              '''There is a variety of herbs and spices at our disposal these days, more so than ever. They not only provide flavor but also may offer several health benefits as well (74Trusted Source).

For example, ginger and turmeric both have potent anti-inflammatory and antioxidant effects, which may help improve your overall health (75Trusted Source, 76Trusted Source).

Due to their powerful potential health benefits, you should aim to include a wide variety of herbs and spices in your diet.
'''),
      ItemDiscribtion(
          name: '23. Nurture your social relationships',
          discribtion:
              '''Social relationships — with friends, family, and loved ones you care about — are important not only for your mental well-being but also your physical health.

Studies show that people who have close friends and family are healthier and live much longer than those who do not (77Trusted Source, 78Trusted Source).

'''),
      ItemDiscribtion(
          name: '24. Occasionally track your food intake',
          discribtion:
              '''The only way to know exactly how many calories you eat is to weigh your food and use a nutrition tracker, as estimating your portion sizes and calorie intake is not unreliable (79Trusted Source, 80Trusted Source).

Tracking can also provide insights into your protein, fiber, and micronutrient intake.

Though some studies have found a link between tracking calories and disordered eating tendencies, there is some evidence that suggests that people who track their food intake tend to be more successful at losing weight and maintaining their weight loss (78Trusted Source, 81Trusted Source, 82Trusted Source, 83Trusted Source).

''')
    ];

    HealthTips healthTipList2 = HealthTips(
        headline:
            'ব্রেকফাস্টে সাদা পাউরুটি খাচ্ছেন? গুরুতর বিপদ এড়াতে আজ থেকেই এড়িয়ে চলুন',
        headImage: 'assets/healthtips/whitebread.png',
        discrbtion: '''
সাদা পাউরুটিতে রয়েছে প্রচুর পরিমাণে কার্বোহাইড্রেট। ফলে পাউরুটি তৈরিতে যে ময়দা ব্যবহার করা হয়, তা খুব বেশি পরিমাণে খেলে পেটের নানান সমস্যা তৈরি করতে পারে।
পশ্চিমী সংস্কৃতিকে অনুসরণ করে ভারতীয়রা ব্রেকফাস্টে প্রবেশ করেছে ব্রেড খাওয়ার রীতি। এই প্রবেশাধিকার মিলেছে বহুকাল আগেই, ইংরেজ আমল থেকে। সেই শুরু। অনেকেই এখনও সকালের ব্রেকফাস্টে মুচমুচে ব্রেড বাটার, ব্রেড জ্যাম, ব্রেড অমলেটের মত খাবার খেতে পছন্দ করেন। তবে এই সাদা পাউরুটি খাওয়ার ফলে শরীরের বাসা বাঁধতে পারেন কঠিন অসুখ। যার কারণে প্রাতঃরাশ থেকে এই পাউরুটি না রাখাই ভাল।

সমীক্ষা করে জানা গিয়েছে, পাউরুটি শরীরে নানারকম ক্ষতি করে। বিশেষ করে সাদা পাউরুটি স্বাস্থ্যের জন্য খুবই ক্ষতিকর। তাই না চাইলেও এই পাউরুটি খাওয়া এড়িয়ে যেতে হবে। কারণ স্বাস্থ্যর জন্য এই সাদা পাউরুটি অত্যন্ত বিপজ্জনক।
ভাবছেন, সাদা পাউরুটি শরীরেরর উপর কী প্রভাব ফেলে? স্বাস্থ্যবিশেষজ্ঞদের মতে, সাদা পাউরুটিকে স্বাস্থ্যের জন্য ক্ষতিকর বলে দাবি জানিয়েছেন। মনে করা হয়, এই সাদা পাউরুটি খাওয়ার অভ্যাস অনেক সমস্যা বাড়িয়ে তুলতে পারে।

সাদা পাউরুটিতে রয়েছে প্রচুর পরিমাণে কার্বোহাইড্রেট। ফলে পাউরুটি তৈরিতে যে ময়দা ব্যবহার করা হয়, তা খুব বেশি পরিমাণে খেলে পেটের নানান সমস্যা তৈরি করতে পারে। এছাড়া যে সব খাবারে কার্বোহাইড্রেটের পরিমাণ বেশি থাকে, সেইসব খাবার শরীরে উপর ক্ষতিকর প্রভাব ফেলে।

সাদা পাউরুটি খাওয়ার অপকারিতা

– সাদা পাউরুটি খেলে দ্রুত ওজন বাড়ে। এরমানে প্রতিদিন সাদা পাউরুটি খেলে ওবেসিটিতে আক্রান্ত হওয়ার সম্ভাবনা বেড়ে যায়।

– এতে চিনির মাত্রাও অনেক বেশি।ডায়াবেটিসে আক্রান্তদের কখনইএই পাউরুটি খাওয়া উচিত নয়।

– সাদা পাউরুটি খাওয়া মানসিক অবস্থার উপরও প্রভাব ফেলে।

– চিকিৎসকদের মতে, ময়দায় সোডিয়াম বেশি থাকে। যা স্বাস্থ্যের জন্য ক্ষতিকারক। সোডিয়াম কম হওয়া যেমন ভালো নয়, তেমনই মাত্রাতিরিক্ত সোডিয়ামও শরীরের জন্য ক্ষতিকর। রোজ ময়দার পাউরুটি খেলে সোডিয়ামের মাত্রা বাড়ে।

– আমেরিকান জার্নাল অব ক্লিনিকাল নিউট্রিশনে প্রকাশিত রিপোর্ট অনুযায়ী, পাউরুটি খাওয়ার ফলে শরীরের বিশেষ কিছু হরমোনের ক্ষরণও বেড়ে যায়। যার ফলে মানসিক অবসাদ বেড়ে যায়।

– গবেষণায় দেখা গিয়েছে, ময়দাজাতীয় খাবার নিয়মিত খেলে শরীরে কোলেস্টরলের মাত্রা অনেকটাই বাড়ে। যেহেতু কোলেস্টরল বেড়ে যায়; তাই হার্টের নানা সমস্যার ঝুঁকি বাড়ে
''');

    HealthTips healthTipList3 = HealthTips(
        headline:
            'জানেন কি প্রতিদিন এক গ্লাস লেবুর জল সুস্থ রাখতে পারে আপনার কিডনিকে?',
        headImage: 'assets/healthtips/labu.png',
        discrbtion:
            '''স্বাস্থ্যকর খাদ্যাভ্যাস এবং স্বাস্থ্যকর জীবনযাপন আমাদের জীবনের অংশ হওয়া দরকার। কিন্তু আমরা যদি লক্ষ্য করি দেখা যাবে আমাদের চারপাশে সবাই ওজন কমানোর দৌড়ে ছুটছে। নাহলে কেউ ক্যালোরি যুক্ত খাবার খাচ্ছে। অথবা কোনও মানুষের ইমিউনিটি সিস্টেম খুবই দুর্বল। আর এগুলো নিয়েই বেশি মাথা ঘামাচ্ছেন সকলেই। এই সব নিয়েই পাল্টাচ্ছেন খাদ্যাভ্যাস। কিন্তু আপনি কি কখনও আপনার খাদ্যাভ্যাস কিডনির স্বাস্থ্যের (Kidney Health) ওপর বিবেচনা করে পরিবর্তন করেছেন? এর উত্তর অধিকাংশই না! কিডনি সবচেয়ে গুরুত্বপূর্ণ অঙ্গগুলির মধ্যে একটি যা আমাদের সামগ্রিক শরীরকে সুস্থ রাখতে সহায়তা করে। একটি সুস্থ কিডনি শরীরে তরলের সঠিক ভারসাম্য বজায় রাখতে সাহায্য করে এবং টক্সিন ও বর্জ্য নির্গত করতে সাহায্য করে। তাই, সকলের মধ্যে সচেতনতা (Awareness) জাগাতে ইন্টারন্যাশনাল সোসাইটি অফ নেফ্রোলজি (ISN) এবং ইন্টারন্যাশনাল ফেডারেশন অফ কিডনি ফাউন্ডেশন (IFKF)-এর যৌথ উদ্যোগে প্রতি বছর ১০ মার্চ বিশ্ব কিডনি দিবস (World Kidney Day) পালিত হয়।

স্বাস্থ্য বিশেষজ্ঞদের মতে, আমরা আমাদের খাদ্যতালিকায় বেশ কিছু সাধারণ খাবার যোগ করে কিডনির স্বাস্থ্য উন্নত করতে পারি। এর মধ্যে হল তরল (জল এবং অন্যান্য পানীয়) জাতীয় খাবার যা সবচেয়ে সাধারণ। হার্ভার্ড ইউনিভার্সিটির অফিসিয়াল ওয়েবসাইটে প্রকাশিত একটি প্রতিবেদনে বলা হয়েছে, “ন্যাশনাল কিডনি ফাউন্ডেশনের ২০১৫ সালের একটি মেটা-বিশ্লেষণে দেখা গেছে যে যারা প্রতিদিন ২-২.৫ লিটার প্রস্রাব নির্গত করে তাদের কিডনিতে পাথর হওয়ার সম্ভাবনা ৫০ শতাংশ কম। আর এই পরিমাণ প্রস্রাব উৎপাদন করতে দৈনিক প্রায় ৮-১০ আউন্স গ্লাস (প্রায় ২ লিটার) জল প্রয়োজন।”
ওই প্রতিবেদনে আরও বলা হয়েছে যে লেবুর রস হল এমন আরেকটি পানীয় যা আমাদের কিডনিকে ডিটক্স করতে সবচেয়ে বেশি সাহায্য করে। হার্ভার্ড-অধিভুক্ত ম্যাসাচুসেটস জেনারেল হাসপাতালের কিডনি স্টোন প্রোগ্রামের সহ-পরিচালক ডঃ ব্রায়ান আইজনারের মতে, “গবেষণায় দেখা গেছে যে প্রতিদিন আধ কাপ লেবুর রস জলে মিশিয়ে পান করলে বা দুটি লেবুর রস পান করলে প্রস্রাবের সাইট্রেট বাড়িয়ে তুলতে পারে এবং এটি কিডনিতে পাথর হওয়ার সম্ভাবনা হ্রাস করে।”

এটি বিবেচনা করে, আমরা আপনার জন্য কিছু সুস্বাদু এবং ফ্রেশ লেবু-ভিত্তিক পানীয়র রেসিপি নিয়ে এসেছি যাতে বিশ্ব কিডনি দিবস ২০২২-কে স্বাস্থ্যকর ভাবে পালন করা যায়। এক নজরে দেখে নেওয়া যাক সেগুলো কী-কী।

-লেবুর রস মিশিয়ে পানীয় তৈরি করার সবচেয়ে সহজ উপায় হল পুদিনা দিয়ে লেবুর জল। লেবুর জল তৈরি করে তাতে পুদিনা ক্রাশ করে দিয়ে দিন। এই গরমের দিনে আপনাকে তাৎক্ষণিক সতেজতা এনে দেবে এই পানীয়।

-এছাড়া আপনি মশলা নিম্বু সোডা খেতে পারেন। সোডার সঙ্গে লেবুর রস ও চাট মশলা মিশিয়ে এই পানীয় তৈরি করুন।

-কোকোনাট শিকাঞ্জিও লেবুর জল পান করার একটি সহজ উপায়। শুধু সাধারণ জলের বদলে ডাবের জল ব্যবহার করুন। ডাবের জলের লেবুর রস মিশিয়ে পান করলেও আপনার কিডনি সুস্থ থাকবে।
''');

    HealthTips healthTipList4 = HealthTips(
        headline:
            'দীর্ঘক্ষণ একই জায়গায় বসে আছেন? এই স্ট্রেচ পদ্ধতিগুলো ট্রাই করুন',
        headImage: 'assets/healthtips/run.png',
        discrbtion: '''
আপনি হয়তো রোজ যোগব্যায়াম (Exercise) করছেন। নিয়মিত জিমে গিয়ে ওয়েট লিফট করেন। কিন্তু আপনি যদি সঠিক পদ্ধতি অবলম্বন না করে ব্যায়াম করেন কিংবা ঠিক ভাবে পসজার (দেহভঙ্গি) না করেন, স্ট্রেচ (Stretches) না করেন তাহলে কোনও লাভই হবে না। এখন করোনা পরিস্থিতির জন্য অনেকেই ওয়ার্ক ফ্রম হোম মোডে রয়েছে। তাছাড়াও সমীক্ষা বলছে বেশির ভাগ মানুষ সময় কাটান অনলাইনে। সোফায়, বিছানায় ল্যাপটপ, ফোন নিয়ে সারাদিন ধরে শুয়ে, বসে আছে। এটা সবচেয়ে বাজে পসজার (Posture)। সুতরাং সুস্থ জীবনযাপনের জন্য একটা সঠিক স্ট্রেচ রুটিন মেনে চলা জরুরি। সেটা আপনি যখন-তখন করতে পারেন কিংবা নির্দিষ্ট সময়ে অথবা ওয়ার্ক আউটের (Work Out) সময়ও করতে পারেন। এমন কিছু স্ট্রেচ পদ্ধতি রয়েছে যা আপনার পসজার ঠিক করতে এবং শরীর স্বাস্থ্য আরও উন্নত করতে সাহায্য করবে। এই বিষয়ে বিশেষ টিপস শেয়ার করেছে ফিটনেস কোচ জো মডগিল।

জো তাঁর ফেসবুক পোস্টে একটি ভিডিয়ো শেয়ার করেছেন, যেখানে তিনি দেখিয়েছে স্ট্রেচ করার সহজ পদ্ধতি। তিনি বলেছেন, এগুলো ঠিক ভাবে মেনে চললে আপনি অবশ্যই আরও ভালো অনুভব করবেন। সেগুলো কী-কী চলুন দেখে নেওয়া যাক…
ওয়াল ডাউনওয়ার্ড‌ ডগ- এই ব্যায়ামটি আপনাকে ২০ সেকেন্ডের জন্য করতে হবে। নিচের দিকে কুকুরের ভঙ্গিতে দাঁড়ান। কিন্তু আপনার হাত থাকবে দেওয়ালে। পিছনে লম্বা হয়ে দাঁড়ান এবং পা মেঝেতে রাখুন। এই ভাবে ২০ সেকেন্ড থাকুন।

আপসাইড ডাউন ৯০ ডিগ্রি- এই ব্যায়ামটিকেও আপনাকে ২০ সেকেন্ডের জন্য করতে হবে। কীভাবে করবেন এই ব্যায়াম? আপনার কনুই ৯০ ডিগ্রিতে রেখে আপনার হাত দুটিকে একটি দেওয়ালে বা কাচের জানালার বিপরীতে রাখুন। এই ভাবে ২০ সেকেন্ড থাকুন।

ওভারহেড শোল্ডার স্ট্রেচ- আপনার হাতগুলি দেওয়ালের উপরের দিকে রাখুন, আপনার থেকে দূরে। এবার আপনার আঙুলগুলি একটি কোণে আকাশের দিকে মুখ করে রাখুন। এই ভাবে ২০ সেকেন্ড থাকুন।

হ্যান্ডষ ইন প্রেয়ার- প্রথম স্ট্রেচ পদ্ধতিটির মতোই একই ভঙ্গি অনুসরণ করুন। শুধু আপনার হাত দুটো প্রার্থনার মতো করে রাখুন। এই ভাবে ২০ সেকেন্ড থাকুন।

ক্রসওভার-  আপনার হাত ক্রিস ক্রস আকারে আপনার সামনে রাখুন। এবং সাপোর্টের জন্য কিছু ধরে রাখুন। এই ভাবে ২০ সেকেন্ড থাকুন। এর পর আবার এই পদ্ধতিটি অন্য হাত ঘুরিয়ে করুন।

ল্যাটেরাল রিচ- এক হাত দিয়ে দেওয়াল ধরুন। অন্য হাত দিয়ে পার্শ্ববর্তীভাবে আপনার কান ধরার চেষ্টা করুন। এই একই পদ্ধতি ২০ সেকেন্ড পর আবার অন্য হাত দিয়ে করার চেষ্টা করুন।

চেস্ট স্ট্রেচ- দেওয়াল থেকে দূরে মুখ করুন এবং এক হাতের দূরত্বে দাঁড়ান। তারপরে, এগিয়ে যান এবং পিছনে আপনার হাত দিয়ে দেওয়াল স্পর্শ করার চেষ্টা করুন। এই ভাবে ২০ সেকেন্ড থাকুন।
''');

    HealthTips healthTipList5 = HealthTips(
        headline:
            'এইচডিএল বা ভাল কোলেস্টেরলের মাত্রা বাড়াবেন কীভাবে? টিপস শেয়ার করলেন পুষ্টিবিদ',
        headImage: 'assets/healthtips/hld.png',
        discrbtion:
            '''কোলেস্টেরল (Cholesterol) দুই ধরনের, ভালো এবং খারাপ। কোষের সুস্থ গঠনের জন্য শরীরের ভালো কোলেস্টেরল (Good Cholesterol) প্রয়োজন, আবার খারাপ কোলেস্টেরলের বৃদ্ধি শরীরে নানা রোগের কারণ হতে পারে। এটা বিশ্বাস করা হয় যে খারাপ কোলেস্টেরলের মাত্রা বাড়লে এটি হৃদরোগের ঝুঁকি বাড়ায়, যার ফলে হার্ট অ্যাটাক হতে পারে। ভালো কোলেস্টেরলকে হাই ডেনসিটি লিপোপ্রোটিন (HDL) বলা হয়। এই খারাপ কোলেস্টেরলকে শোষণ করে এবং শরীরকে সুস্থ (Health Care) রাখতে সাহায্য করে। শুধু তাই নয়, এটি হৃদরোগ এবং স্ট্রোকের (Heart Health) ঝুঁকি কমাতে পারে। এর অর্থ হল যে শরীরে এর সঠিক মাত্রা বজায় রাখা গুরুত্বপূর্ণ কারণ এটি খারাপ কোলেস্টেরল (Bad Cholesterol) দূর করতে পারে।

পুষ্টিবিদ পূজা মালহোত্রা তাঁর ইনস্টাগ্রামে একটি ভিডিয়ো শেয়ার করেছেন যেখানে তিনি ব্যাখ্যা করেছেন যে কীভাবে ভাল কোলেস্টেরল আপনার জন্য উপকারী এবং শরীরে এটি বাড়ানোর জন্য কী করা উচিত। তিনি বলেছেন যে ভাল কোলেস্টেরল মূলত জেনেটিক কারণ দ্বারা নির্ধারিত হয়, তবে স্বাস্থ্যকর খাবার গ্রহণের মাধ্যমে এর মাত্রা বাড়ানো যেতে পারে।
-শরীরে ভালো কোলেস্টেরল বাড়াতে স্বাস্থ্যকর ফ্যাটযুক্ত জিনিস খাওয়া উচিত। আপনার খাদ্যতালিকায় বাদাম, বীজ, ফ্যাটযুক্ত মাছ, সর্ষের তেল, জলপাই, অ্যাভোকাডো এবং অন্যান্য জিনিস অন্তর্ভুক্ত করুন।

-প্রতিদিন ব্যায়াম করলে শরীরের অনেক উপকার হয়। আপনি ভালো কোলেস্টেরল বাড়াতে ব্যায়াম করতে পারেন। আপনি অ্যারোবিক ব্যায়াম, হাই ইনটেনসিটি ওয়ার্কআউট এবং স্ট্রেনথ টেনিং ইত্যাদি করতে পারেন।

-পূজা জানিয়েছেন যে, শরীরে ভালো কোলেস্টেরল বাড়াতে চাইলে ধূমপান ত্যাগ করতে হবে। আসলে এই খারাপ অভ্যাস আপনার রক্তে ভালো কোলেস্টেরল কমাতে পারে। বাড়াতে পারে এলডিএল-এর মাত্রা। যার ফলে বৃদ্ধি পাবে হৃদরোগের ঝুঁকি।

-আপনার খাদ্যতালিকায় বেগুনি রঙের ফল ও সবজি যেমন বেগুন ইত্যাদি রাখুন। এই জিনিসগুলিতে অ্যান্থোসায়ানিন নামক অ্যান্টিঅক্সিডেন্ট রয়েছে, যা এইচডিএল কোলেস্টেরলের মাত্রা উন্নত করতে সাহায্য করে।

– ট্রান্স ফ্যাট ট্রান্স ফ্যাটি অ্যাসিড নামেও পরিচিত। প্রচলিত ভাষায় একে বলা হয় চর্বি। ক্রিম দিয়ে তৈরি জিনিসে এটি বেশি পাওয়া যায়। এটি খারাপ কোলেস্টেরল বাড়ায় এবং ভাল কোলেস্টেরল কমায় বলে বিশ্বাস করা হয়। তাই এমন কোনও খাবার খাবেন না যেটায় এই ফ্যাট রয়েছে।
''');

    HealthTips healthTipList6 = HealthTips(
        headline: ' জীবন হোক চিনি-মুক্ত! ধারেকাছেও ঘেঁষবে না ডায়াবিটিস…',
        headImage: 'assets/healthtips/sugar.png',
        discrbtion:
            '''ওজন বাড়লেই ( Obesity) আসে ডায়াবিটিস (Diabetes), কোলেস্টেরল (High Cholesterol) বাড়ার মত সমস্যা। আর যে কারণে প্রথম থেকেই এই বিষয়ে সচেতন থাকতে হবে সকলকেই। নিয়ম মেনে খাওয়া-দাওয়া, শরীরচর্চা সবই করতে হবে। আজকাল ডায়াবিটিসের কোনও নির্দিষ্ট বয়স নেই। মূলত টাইপ ২ ডায়াবিটিসে আক্রান্তের সংখ্যাই সবচাইতে বেশি। ডায়াবিটিসের যদিও নির্দিষ্ট কোনও বয়স নেই। ২০ বছর থেকেই এখন তরুণরা হচ্ছেন ডায়াবিটিসের শিকার। এছাড়াও কিছুজনের ডায়াবিটিস জিনগত। তবে ডায়াবিটিস থাকলেই একাধিক শারীরিক সমস্যা আসে। তবে টাইপ ২ ডায়াবিটিস থাকলে ওজন কমানোটাও একটা চ্যালেঞ্জ। কারণ শরীরে ইনসুলিন রেজিসট্যান্স প্রক্রিয়া ঠিক ভাবে কাজ না করায় অতিরিক্ত মেদ জমে যায় শরীরে। এর ফলে ওজনও বাড়ে। ডায়াবিটিস নিঃশব্দেই ঘাতক হয়ে দাঁড়াচ্ছে আমাদের সমাজে। আর জন্য কিন্তু আমরাই দায়ী। নিয়মিত ডায়েটে মেনে চললেই কিন্তু শরীরের অনেক সমস্যার সমাধান হয়। সেই সঙ্গে রান্নাঘরেও মেনে চলতে হবে বেশ কিছু অভ্যাস।

অতিরিক্ত রান্না নয়- অনেকেরই অভ্যাস আছে অতিরিক্ত রান্না করার। রান্নার আইটেম যত বাড়াবেন ততই কিন্তু সমস্যা। এতে তেল, মশলা, চিনি, গ্যাস সবই অতিরিক্ত খরচ হয়। সেই সঙ্গে নুন, চিনিও থাকে। অনেকেই খাবার বেশি হলে তা ফেলতে চান না। এবার অতিরিক্ত খাবার খেলে শরীরেরও অনেক রকম সমস্যা হয়। ওজন বাড়ে, সুগার বাড়ে আসে হজমের সমস্যাও। তাই প্রথম থেকেই পরিমিত খান।
অতিরিক্ত চিনি নয়- চিনি আমাদের শরীরের জন্য একেবারেই ভাল নয়। ছোট থেকেই বাচ্চাদের সেই মত অভ্যাস করান। চিনির পরিবর্তে গুড়, মধু ব্যবহার করুন। এমনকী রান্নাতেও দিন জাগেরি পাউডার। চা-তে চিনি একেবারেই খাবেন না। মিষ্টি খাওয়ার মধ্যেও সীমাবদ্ধতা আনুন। এছাড়াও যে কোনও প্যাকেট ফুড, ফাস্ট ফুড, ফ্রোজেন ফুড এড়িয়ে চলুন। কারণ এর মধ্যেও কিন্তু থাকে প্রচুর পরিমাণ চিনি। পাঁউরুটির মধ্যেও কিন্তু অনেকটা চিনি থাকে। আর তাই এগিয়ে যেতে পারলেই ভাল।

চকোলেট কম খান- চকোলেট খান, কিন্তু ডার্ক চকোলেট খান। ডার্ক চকোলেটের মধ্যে থাকা অ্যান্টিঅক্সিডেন্ট আমাদের শরীরের জন্য খুব ভাল। হার্ট ভাল রাখে, স্ট্রেস রাখে নিয়ন্ত্রণে। কিন্তু মিল্ক চকোলেট বা ক্রিম চটকোলেট একেবারেই নয়। এতে থাকে প্রচুর পরিমাণ চিনি। ৭৭ শতাংশ কোকা রয়েছে এমন চকোলেট খান। এছাড়াও মুখের মধ্যে সব সময় চকোলেট রাখার মত অভ্যাসও কিন্তু রাখবেন না।

পরিবারের অন্দরেই ডায়েটয়ে আনুন পরিবর্তন- সুস্থ থাকতে প্রথম থেকেই সকলকে সজাগ থাকতে হবে। বাইরের খাবার একেবারেই বন্ধ করতে পারলে ভাল। পছন্দের খাবার কম তেলে বানিয়ে নিন বাড়িতেই। বেশি ফাইবার সমৃদ্ধ খাবার খান। আর তাই ব্রেকফাস্টে সবচেয়ে ভাল খাবার হল ওটস। কম তেল-মশলার খাবার খাওয়া অভ্যাস করুন। নিয়মিত কোনও একটি ফল খান। এছাড়াও প্রচুর পরিমাণ শাক সবজি খেতে হবে। তবেই কিন্তু ভিতর থেকে শরীর থাকবে সুস্থ। সেই সঙ্গে নিয়মিত শরীরচর্চা জরুরি।
''');

    HealthTips healthTipList7 = HealthTips(
        headline: 'রক্তের কণিকা সমূহ',
        headImage: 'assets/healthtips/bloodcell.jpg',
        discrbtion: '''''');
    healthTipList7.item = [
      ItemDiscribtion(name: 'রক্তকণিকা', discribtion: '''
রক্তকোষ (মাঝে মাঝে হেমাটোসাইট বলা হয়) হল হেমাটোপয়েসিস প্রক্রিয়ায় তৈরিকৃত একধরনের কোষ, যা সাধারণত রক্তে পাওয়া যায়। স্তন্যপায়ীদের রক্তের রক্তকোষগুলোকে তিন শ্রেণিতে ভাগ করা যায়। যথাঃ

* লোহিত রক্তকণিকা - ইরাথ্রোসাইট
* শ্বেত রক্তকণিকা - লিউকোসাইট
* অণুচক্রিকা - থ্রম্বোসাইট
'''),
      ItemDiscribtion(name: 'লোহিত রক্তকণিকা', discribtion: '''
লোহিত রক্তকণিকা রক্তের সর্বপ্রধান কোষ বা কণিকা যা মেরুদণ্ডী প্রাণীদের ফুসফুস থেকে দেহের কলাগুলিতে অক্সিজেন সরবরাহের প্রধান মাধ্যম হিসেবে কাজ করে। হিমোগ্লোবিনের মাধ্যমে ফুসফুস বা ফুলকার মধ্যকার কৈশিক নালির মধ্যে সংবহণের সময় শ্বাসবায়ু থেকে লোহিত রক্তকণিকাতে অক্সিজেন সংগৃহিত হয় এবং কার্বন ডাইঅক্সাইড পরিত্যক্ত হয়।[২] অন্যান্য কলায় কৈশিকনালীর মাধ্যমে রক্ত সংবহনের সময় লোহিত রক্তকণিকা থেকে অক্সিজেন কোষে স্থানান্তরিত হয় এবং কার্বন ডাইঅক্সাইড বিপরীতে অর্থাৎ লোহিত রক্তকণিকাতে প্রবাহিত হয়। এই কণিকার আয়ু ১২০ দিন। পুনর্গঠন প্রক্রিয়ায় এভাবে এরা পুনরায় মনোপোটেন্ট স্টেম সেল প্রস্তুত করে ও তৈরি হয়। তারা শ্বেত রক্তকণিকার সাথে দেহের কোষের প্রতিরক্ষার কাজ করে।
মানবদেহের রক্তরসে ভাসমান গোল, দ্বি-অবতল চাকতির মতো, নিউক্লিয়াসবিহীন কিন্তু অক্সিজেনবাহী হিমোগ্লোবিনযুক্ত, লাল বর্ণের কণিকাকে লোহিত রক্তকণিকা বলা হয়। এ ধরনের কণিকার গড় ব্যাস ৭.৩মিউম ও গড় স্থুলতা ২.২মিউম এবং এটির কিনারা অপেক্ষা মধ্যভাগ অনেক পাতলা।

''', suggetion: '''লোহিত কণিকার কোথায় থেকে সৃষ্টি হয়......?
=>মানব ভ্রণের প্রাথমিক পর্যায়ে কুসুম থলিতে, মাধ্যমিক পর্যায়ে যকৃত এবং ভূমিষ্ঠ সময় থেকে পর্শুকা, কশেরুকা, স্টার্ণাম ও শ্রেণিচক্রের লাল অস্থিমজ্জায় অবস্থিত বড় নিউক্লিয়াসযুক্ত এরিথ্রোব্লাস্ট নামক স্টেমকোষ থেকে অবিরাম লোহিত কণিকা সৃষ্টি হয়।

▶ লোহিত কণিকার(Erythrocytes) কাজঃ
১. হিমোগ্লোবিনের মাধ্যমে ফুসফুস থেকে দেহকোষে অধিকাংশ অক্সিজেন ও সামান্য পরিমাণ কার্বন ডাই অক্সাইড সরবরাহ করে।
২. রক্তের ঘনত্ব ও আঠালো ভাব রক্ষা করে।
৩. হিমোগ্লোবিন বাফার হিসেবে রক্তে অম্ল-ক্ষারের সমতা রক্ষা করে এবং রক্তের সাধারণ ক্রিয়া বজায় রাখতে সাহায্য করে।
৪. রক্তের আয়নিক ভারসাম্য অব্যাহত রাখে।
৫. রক্তরসের স্থে অভিস্রবণিক সম্পর্ক রক্ষা করে।
৬. প্লাজমাঝিল্লিতে সংযুক্ত অ্যান্টিজেন রক্তের গ্রুপিংয়ে সাহায্য করে।
৭. এসব কণিকা রক্তে বিলিভার্ডিন ও বিলিরুবিন উৎপন্ন করে।
'''),
      ItemDiscribtion(name: 'শ্বেত রক্তকণিকা', discribtion: '''
শ্বেত রক্তকণিকা দেহের প্রতিরক্ষার কাজ করে। এটি নানা ধরনের সংক্রামণকারী রোগ থেকে মানুষকে রক্ষা করে। পাঁচটি ভিন্ন ধরনের লিউকোসাইট রয়েছে[৩], তবে তারা প্রত্যেকেই বোন ম্যারোর মধ্যকার এক ধরনের মাল্টিপোটেন্ট কোষ থেকে সৃষ্টি হয় যাকে হেমাপয়েটিক স্টেম সেল বলা হয়, তারা মানবদেহে ৩-৪ দিন থাকে। রক্ত এবং লসিকা সহ সারা মানবদেহেই লিউকোসাইট পাওয়া যায়[৪]।
''', suggetion: ''' শ্বেত রক্তকণিকার(Leucocytes) কাজঃ
১. মনোসাইট ও নিউট্রোফিল ফ্যাগোসাইটোসিস প্রক্রিয়ায় জীবাণু ভক্ষণ করে ধ্বংস করে।
২. লিস্ফোসাইটগুলো অ্যান্টিবডি সৃষ্টি করে রোগ প্রতিরোধ করে।
৩.বেসোফিল হেপারিন সৃষ্টি করে দেহের রোগ প্রতিরোধ ক্ষমতা বাড়ায়।
৪. দানাদার লিউকোসাইট হিস্টামিন সৃষ্টি করে দেহের রোগ প্রতিরোধ ক্ষমতা বাড়ায়।
৫. নিউট্রোফিলের বিষাক্ত দানা জীবাণু ধ্বংস করে।
৬. ইওসিনোফিল রকাতে প্রবেশকৃত কৃমির লার্ভা এবং অ্যালার্জিক-অ্যান্টি ধ্বংস করে।
'''),
      ItemDiscribtion(name: 'অণুচক্রিকা', discribtion: '''
অণুচক্রিকা বা থ্রম্বোসাইট বা প্লেটলেট হল অতিক্ষুদ্র, অনিয়মিত আকারের কোষ (এতে কোন ডিএনএধারী নিউক্লিয়াস নেই)। এর ব্যাস ২-৩ µm[৫] এবং প্রিকার্সর মেগাকারিওসাইটের গাঁজান থেকে সৃষ্টি হয়। এর আয়ু বড়জোর ৫-৯ দিন। অণুচক্রিকা বৃদ্ধির প্রাকৃতিক উৎস। স্তন্যপায়ীদের দেহে এরা সংবাহিত হয় এবং রক্ততঞ্চনে অর্থাৎ ক্ষতস্থানের রক্ত জমাট বাঁধায় নিয়োজিত থাকে। অণুচক্রিকা সূতার আঁশের ন্যায় রক্তকে জমাট বাঁধায়।

অণুচক্রিকার সংখ্যা খুব কমে গেলে মারাত্মক রক্তক্ষরণ হতে পারে। আবার অণুচক্রিকার সংখ্যা খুব বেরে গেলে তা রক্তনালিকাগুলোকে বাঁধা দিয়ে থ্রম্বোসিস ঘটাতে পারে এবং এমন পরিস্থিতিতে স্ট্রোক, মাইওকার্ডিয়াল ইনফ্র্যাকশন, ফুসফুসীয় ধমনীরোধ এবং রক্তনালিকা বন্ধ হয়ে যেতে পারে। অণুচক্রিকার অস্বাভাবিকতা বা রোগকে থ্রম্বোসাইটোপ্যাথি বলা হয়[৬] যা হতে পারে অণুচক্রিকা কমে গেলে (থ্রম্বোসাইটোপেনিয়া), অণুচক্রিকার স্বাভাবিক কাজ বাধাগ্রস্ত হলে (থ্রম্বোস্টেনিয়া) কিংবা অণুচক্রিকার সংখ্যা বেড়ে গেলে (থ্রম্বোসাইটোসিস)। এছাড়া বেশকিছু রোগের কারণেও অণুচক্রিকা কমতে পারে যেমন ডেঙ্গু বা হেপারিন-ইনডিউজড থ্রম্বোসাইটোপেনিয়া (এইচআইটি)।

অণুচক্রিকা বিভিন্ন বৃদ্ধিবর্ধক উপাদান উৎপন্ন করে যেমন প্লেটলেট-ডেপরাইভড্‌ গ্রোথ ফ্যাক্টর (পিডিজিএফ), এ পটেন্ট কেমোট্যাক্টিক এজেন্ট এবং টিজিএফ বেটা যা অতিরিক্ত কোষীয় মাতৃকাকে তরান্বিত করে। উভয় বৃদ্ধিবর্ধক উপাদান সংযোজক কলার পুনর্গঠন এবং পুনঃনির্মানে গুরুত্বপূর্ণ ভূমিকা রাখে। এছাড়াও আরো কিছু বৃদ্ধিবর্ধক উপাদানও তৈরি করে অণুচক্রিকা যেমন ফাইব্রোব্লাস্ট গ্রোথ ফ্যাক্টর, ইনসুলিন-এর ন্যায় গ্রোথ ফ্যাক্টর-১, প্লেটলেট-ডেপরাইভড এপিডার্মাল গ্রোথ ফ্যাক্টর এবং ভাস্কুলার এন্ডোথেলিয়াল গ্রোথ ফ্যাক্টর। এসব উপাদানের স্থানীয় প্রয়োগ প্লেটলেট-রিচ প্লাজমা (পিআরপি)-এর ঘনত্ব বাড়ায় এবং ক্ষত সারাতে যুগ-যুগ ধরে ব্যবহৃত হয়ে আসছে[
''', suggetion: '''
অণুচক্রিকার (Platelets)  কাজঃ
১. অস্থায়ী Platelet plug সৃষ্টির মাধ্যমে রক্তপাত বন্ধ করে।
২. রক্তজমাট ত্বরান্বিত করতে বিভিন্ন ক্লটিং ফ্যাক্টর ক্ষরণ করে।
৩. প্রয়োজন শেষে রক্তজমাট বিগলনে সাহায্য করে।
৪. ফ্যাগোসাইটোসিস প্রক্রিয়ায় ব্যাকটেরিয়া ও ভাইরাস ধ্বংস করে।
৫. দেহের কোথাও ব্যথার সৃষ্টি হলে নিউট্রোফিল ও মনোসাইটকে আকুষ্চকরতে রাসায়নিক পদার্থ ক্ষরণ করে।
৬. রক্তবাহিকার এন্ডোথেলিয়ামের অন্তঃপ্রাচীর সুরক্ষার জন্য গ্রোথ-ফ্যাক্টর ক্ষরণ করে।
৭. সেরোটোনিন নামক রাসায়নিক পদার্থ ক্ষরণ করে রক্তপাত বন্ধের উদ্দেশে রক্তবাহিকাকে দ্রুত সংকোচনে উদ্বুদ্ধ করে।
৮. স্বাভাবিকের চেয়ে অনেক বেশি অণুচক্রিকা থাকলে রক্তনালির ভিতরে অদরকারী রক্তজমাট সৃষ্টি, স্ট্রোক ও হার্ট অ্যাটাকের সম্ভাবনাকে বাড়িয়ে দেয়।
'''),
      ItemDiscribtion(name: 'সম্পূর্ণ রক্তগণনা', discribtion: '''
সম্পূর্ণ রক্তগণনা (Complete blood count) বা সিবিসি হল এক ধরনের পরীক্ষা পদ্ধতি। সাধারণত ডাক্তার বা অন্য কোন চিকিৎসাবিদ কোন রোগীর রক্তের কোষের বিষয়ের সমস্ত তথ্য জানার জন্য এ পরীক্ষা করার আদেশ দেন। একজন বিজ্ঞানী বা প্রযুক্তিবিদ অনুরোধকৃত রক্তপরীক্ষা করেন এবং সিবিসির রিপোর্ট দেন। অতীতে হাতে করে রোগীর রক্ত স্লাইডে রেখে অণুবীক্ষণ যন্ত্রের মাধ্যমে পরীক্ষা করা হত। বর্তমানে একটি স্বয়ংক্রিয় বিশ্লেষকের মাধ্যমে এই পরীক্ষা সম্পন্ন হয়ে থাকে এবং মাত্র ১০-২০% হাতে করা হয়। এই পরিমাণের আধিক্য বা হ্রাস বিভিন্ন রোগের জানান দেয় এবং তাই চিকিৎসাজগতে রক্তগণনা একটি সাধারণ পরীক্ষা যেই হর-হামেশাই করা হয়ে থাকে। এটি রোগীর সাধারণ স্বাস্থ্য-অবস্থার পরিদর্শন দিয়ে থাকে।
'''),
    ];

    HealthTips healthTipList8 = HealthTips(
        headline: 'রক্ত ও রক্তের উপাদান',
        headImage: 'assets/healthtips/blood.jpg',
        discrbtion: '''''');
    healthTipList8.item = [
      ItemDiscribtion(name: 'রক্ত(Blood) কি.......?', discribtion: '''
রক্ত হচ্ছে মানুষের জীবন রক্ষাকারী এক বিশেষ তরল যোজক টিস্যু যার মাধ্যমে বিভিন্ন রক্তবাহিকা দেহের সকর কোষে পুষ্টি, ইলেক্ট্রোলাইট, হরমোন, ভিটামিন, অ্যান্টিবডি,অক্সিজেন, ইমিউন কোষ ইত্যাদি বহন করে এবং কার্বন-ডাই-অক্সাইড ও বর্জ্য পদার্থ প্রত্যাহৃত হয়। একজন পূর্ন বয়স্ক মানুষের শরীরে ৫-৬ লিটার রক্ত থাকে। রক্ত সামান্য ক্ষারীয়। এর pH মাত্রা ৭.৩৫-৭.৪৫। এর তাপমাত্রা ৩৬-৩৮° সেলসিয়াস। অজৈব লবণের উপস্থিতির জন্য রক্তের স্বাদ নোনতা।
'''),
      ItemDiscribtion(
          name: 'রক্তের উপাদান(Components of Blood) কি....?',
          discribtion:
              '''একটি টেস্টটিউবে রক্ত নিয়ে সেন্ট্রিফিউগাল যন্ত্রে ঘুরালে রক্ত দুটি স্তরে বিভক্ত হয়ে পড়ে।  উপরের হালকা হলুদ বর্ণের যে অংশটি দেখা যায় সেটি রক্তরস(Plasma) এবং নিচের গাঢ়তর যে অংশটি দেখা যায় সেটি হলো রক্তকণিকা(Blood Corpuscles)।
'''),
      ItemDiscribtion(
          name: 'রক্তরস কি......?',
          discribtion:
              '''রক্তের হালকা হলুদ বর্ণের তরল অংশকে রক্তরস(Plasma) বলা হয়। রক্তরস তরল  কঠিন পদার্থের সমন্বয়ে তৈরি।  এতে তরল পদার্থের(পানির) পরিমাণ ৯০-৯২% এবং কঠিন পদার্থের পরিমাণ ৮-১০%।
'''),
      ItemDiscribtion(
          name: 'রক্তরসের কাজ কি....?',
          discribtion:
              '''১. রক্তের তরলতা রক্ষা করে এবং ভাসমান রক্ত কণিকাসহ অন্যান্য দ্রবীভূত হয়ে পদার্থ দেহের সর্বত্র পরিবাহিত হয়।
২. পরিপাকের পর খাদ্যসার রক্তরসে দ্রবীভুত হয়ে দেহের বিভিন্ন টিস্যু ও অঙ্গে বাহিত হয়।
৩. টিস্যু থেকে যে সব বর্জ্যপদার্থ বের হয় তা রেচনের জন্য বৃক্কে নিয়ে যায়।
৪. টিস্যুর অধিকাংশ কার্বন ডাই অক্সাইড রক্তরসে বাইকার্বনেটরুপে দ্রবীভূত থাকে।
৫. অল্প পরিমাণে অক্সিজেন বাহিত হয়।
৬. লোহিত কণিকায় সংবদ্ধ হওয়ার আগে অক্সিজেন প্রথমে রক্তরসেই  দ্রবীভূত হয়।
৭. রক্তরসের মাধ্যমে হরমোন, এনজাইম, লিপিড প্রভৃতি বিভিন্ন অঙ্গে বাহিদ হয়।
৮. রক্তরস রক্তের অম্ল-ক্ষারের ভারসাম্য রক্ষা করে। 
৯. রক্তর জমাট বাঁধার প্রয়োজনীয় উপাদান গুলো পরিবহন করে
১০. যকৃত, পেশি ইত্যাদি অঙ্গে উৎপন্ন তাপ শক্তিকে সমগ্র দেহে পরিবহন করে দেহে তাপের সমতা রক্ষা করে।
'''),
      ItemDiscribtion(
          name: 'রক্তকণিকা(Blood Courpuscles) কি.......?',
          discribtion:
              '''রক্তে ভাসমান বিভিন্ন কোষকে রক্ত কণিকা বলা হয়। এই কোষ গুলো হিমাটোপয়েসিস প্রক্রিয়ায় সৃষ্টি হয়। অন্যান্য কোষের মতো স্ববিভাজিত হয়ে সৃষ্টি হয় না বলে এদের কোষ না বলে কণিকা বলা হয়।  রক্তের ৪৫% হরো রক্তকণিকা।
'''),
    ];

    HealthTips healthTipList9 = HealthTips(
      headline:
          'বিছানায় গর্জন! নাক ডাকার সমস্যা থাকলে এখনই সাবধান হোন, বলছেন বিশিষ্ট চিকিৎসক',
      headImage: 'assets/healthtips/Snoring.jpg',
    );
    healthTipList9.item = [
      ItemDiscribtion(
        discribtion: '''
নাকডাকা কথাটাই যে ভুল! নাক তো নয়, ডাকে যে গলা। সাধারণ ধারণা – নাক ডেকে ঘুমোচ্ছেন মানে দিব্য ঘুমোচ্ছেন, ‘সাউন্ড স্লিপ’ হচ্ছে। আগাগোড়া ভুল ধারণা। নাক ডাকা, ৭০ শতাংশ ক্ষেত্রেই কোনও রোগের লক্ষণ।

শরীরে সঠিক মাত্রায় অক্সিজেন প্রবেশ না করলে অক্সিজেন লেভেল ‘ড্রপ’ করে। স্বাভাবিক যা ৯৯/১০০/৯৫ থাকে, তাই ঘুমের মধ্যে কমে হয় ৯০/৮৫/৭০/৬৫।‘ড্রপ’ বেশি সময় ধরে হলে (২/৪/৬ মিনিট) বা বেশি মাত্রায় হলে ‘কার্ডিও ভাসকুলার অ্যাক্সিডেন্ট’ যেমন স্ট্রোক, হার্ট অ্যাটাক হতে পারে। নজর না দিলে প্রাণহানিও হতে পারে।সাধারণ সমস্যাগুলির মধ্যে উল্লেখযোগ্য ঘুমের ঘাটতি, মেমরি লস, ক্লান্তি। অ্যাংজাইটি, ডিপ্রেসন, বয়স্কদের ডিমেনশিয়া বাড়ে। ডায়াবিটিস, কোলেস্টেরলের সমস্যা থাকলে বাড়ে। হাইপারটেনশন হতে পারে। দৈনন্দিন কাজকর্ম ব্যাহত হয়, যৌন ক্ষমতায় প্রভাব পড়ে।
'''),
      ItemDiscribtion(
          name: 'কখন ডাকে?',
          discribtion:
              '''আমরা নাক, মুখ দুই দিয়েই শ্বাস নিই। নাক আর মুখের দু’টি টিউবজাতীয় অংশ আলাদাভাবে শুরু হলেও, কিছুটা ‘কমন প্যাসেজ’ তৈরি করে, পরে এপিগ্লটিসের কাছে ফের আলাদা হয়ে যায়। জেগে থাকলে শ্বাসপ্রশ্বাস স্বাভাবিকই চলে। কিন্তু ঘুমিয়ে পড়লে, কারও কারও গলার কাছের ‘গ্রুপ অফ মাসলস’, যা আদপে হাড় বা কার্টিলেজহীন ‘সফট টিস্যু স্ট্রাকচার’ শিথিল হয়ে যায়। ‘কোল্যাপ্স’ করে। তখন ওই প্যাসেজ দিয়ে যতটা অক্সিজেন প্রবেশের কথা, ততটা হয় না। ব্লকেজ ঘটে। যতটুকু অক্সিজেন ঢোকে, তা গিয়ে সফট টিস্যু স্ট্রাকচারে ধাক্কা খায়, ভাইব্রেশন হয়। এতে যে শব্দ হয়, সেটাই নাক ডাকা। ‘কোল্যাপ্স’ ৩০ শতাংশের বেশি হলে উদ্বেগের।
'''),
      ItemDiscribtion(name: 'কেন ডাকে?', discribtion: '''
কারণ তিনটি। জেনেটিক, এনভায়রনমেন্টাল এবং অ্যানাটমিক্যাল। অনেকে পারিবারিকভাবে নাক ডাকেন। কারণ জিন। কারও ক্ষেত্রে দায়ী অ্যানাটমিক্যাল স্ট্রাকচার। যেমন কারও গলার কাছে ফ্যাট ডিপোজিশন বেশি। ফলে অক্সিজেন প্রবেশের পথ সংকীর্ণ হয়ে যায়। যত বেশি সংকীর্ণ, ‘কোল্যাপ্স’ করার প্রবণতা তত বেশি। ‘এনভায়রনমেন্টাল’ কারণ হল ধূমপান, মদ্যপান। অনেকে নর্ম্যালি নাক ডাকেন না, কিন্তু মদ্যপান করলে ডাকেন। অত্যধিক ক্লান্তিও কারণ। শীতে, বর্ষায় ডাকা বাড়ে।

'''),
      ItemDiscribtion(name: '‘ফুলস্টপ’ কীভাবে?', discribtion: '''
বুঝবেন কী করে, কোন নাকডাকাটা বিপজ্জনক? যদি দেখেন, কেউ এমন জোরে নাক ডাকছেন যে পাশের জন ঘুমোতেই পারছেন না বা শব্দ ঘরের বাইরে থেকেও শোনা যাচ্ছে বা যে ঘুমের মধ্যে রোগীর নিশ্বাস বন্ধ হয়ে যাচ্ছে-তখনই সতর্ক হোন। পলিসমনোগ্রাফিক টেস্ট করান ডাক্তারের পরামর্শমতো। চারটি স্তরে হয়। লেভেল ওয়ান সবচেয়ে অ্যাডভান্সড। ল্যাবরেটরিতে এসে করতে হয়। এতে রোগের কারণ অনেকাংশেই ধরা যায়। এছাড়াও ‘পোর্টেবল ফরম্যাটে’, রোগীর বাড়িতে একটি ছোট যন্ত্র নিয়ে গিয়ে, রাতে রোগীকে লাগিয়ে দেওয়া হয়। কে, কোন পরীক্ষা করবেন, চিকিৎসকই জানাবেন।
চিকিৎসা আছে –
নাক ডাকা থামানোর কোনও ওষুধ নেই, চিকিৎসা আছে চার রকম।
সবচেয়ে সহজ, সস্তা ও পার্শ্ব প্রতিক্রিয়াহীন হল–প্যাপ ডিভাইস। পজিটিভ এয়ারওয়েভ প্রেসার। মাস্কের মতো যন্ত্র, রাতে পরে ঘুমোতে হয়। খুব তাড়াতাড়ি সুস্থ হওয়া যায়। এদেশে দাম ৩০-৩৫ হাজার টাকা।
‘সার্জিক্যাল অপশন’ও আছে। তবে গুরুতর পরিস্থিতি না হলে করা হয় না।
এছাড়া কিছু ডেন্টাল অ্যাপ্ল্যায়েন্সও পাওয়া যায়।
নাক ডাকা বাগে আনতে জীবনযাত্রায় পরিবর্তন আনুন।
ওজন নিয়ন্ত্রণে রাখুন, ঠিক সময়ে ঘুমোন-পর্যাপ্ত ঘুমোন, মদ-সিগারেট থেকে দূরে থাকুন।
''')
    ];

    //  HealthTips healthTipList3 = HealthTips(
    //   headline: 'জানেন কি প্রতিদিন এক গ্লাস লেবুর জল সুস্থ রাখতে পারে আপনার কিডনিকে?',
    //   headImage: 'assets/healthtips/whitebread.png',
    //   discrbtion: '''''');

    ///** healtp tips */
    allhealthtip.add(healthTipList);
    allhealthtip.add(healthTipList7);
    allhealthtip.add(healthTipList4);
    allhealthtip.add(healthTipList8);
    allhealthtip.add(healthTipList2);
    allhealthtip.add(healthTipList3);
    allhealthtip.add(healthTipList5);
    allhealthtip.add(healthTipList6);
    allhealthtip.add(healthTipList9);
  }
}
