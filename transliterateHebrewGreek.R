library(stringr)

original_import <- read.delim("/Users/rivkahcarl/Desktop/testSampleTransliteration_R.txt", header=FALSE)

# Berachot Related words (Shem Hashem)
original_import$V2 <- str_replace_all(original_import$V1, "בָּרוּךְ אַתָּה יְהֹוָה אֱלֹהֵינוּ מֶלֶךְ הָעוֹלָם", "Μπαρούχ ατά Αδωνάη, Ελοένου Μέλεχ α’ολάμ")
original_import$V2 <- str_replace_all(original_import$V2, "בָּרוּךְ אַתָּה יְהֹוָה", "Μπαρούχ ατά Αδωνάη")
original_import$V2 <- str_replace_all(original_import$V2, " לַיהוָֹה ", " λ'Αδωνάη ")
original_import$V2 <- str_replace_all(original_import$V2, " וַיהוָֹה ", " βα'Αδωνάη ") 
original_import$V2 <- str_replace_all(original_import$V2, " יְהֹוָה ", "Αδωνάη ")


original_import$V2 <- str_replace_all(original_import$V2, " בָּרוּךְ ", " μπαρούχ ")

# Little Words, that will get messed up with letter replacements

original_import$V2 <- str_replace_all(original_import$V2, " דָּוִד ", " νταβίδ ")
original_import$V2 <- str_replace_all(original_import$V2, " הוּא ", " ου ")
original_import$V2 <- str_replace_all(original_import$V2, " אֶת ",  " εθ ")
original_import$V2 <- str_replace_all(original_import$V2, " כָל ", " χολ ")
original_import$V2 <- str_replace_all(original_import$V2, " מִן ", " μιν ")
original_import$V2 <- str_replace_all(original_import$V2, " עוֹד ", " οδ ")
original_import$V2 <- str_replace_all(original_import$V2, " כִּי ", " κι ")
original_import$V2 <- str_replace_all(original_import$V2, " עַל ", " αλ ")

# Not sure about these, need to be careful with single letters like vav and final shin (because of final sigma)
original_import$V2 <- str_replace_all(original_import$V2, " וְ", " β'")
original_import$V2 <- str_replace_all(original_import$V2, "שׂ ", "σς ") 



# Replace all letters combined with "וּ" at the beginning of the word
original_import$V2 <- str_replace_all(original_import$V2, " אוּ", " ου")
original_import$V2 <- str_replace_all(original_import$V2, " בּוּ", " μπου")
original_import$V2 <- str_replace_all(original_import$V2, " בוּ", " βου")
original_import$V2 <- str_replace_all(original_import$V2, " גוּ", " γου")
original_import$V2 <- str_replace_all(original_import$V2, " גּוּ", " γκου")
original_import$V2 <- str_replace_all(original_import$V2, " דוּ", " δου")
original_import$V2 <- str_replace_all(original_import$V2, " דּוּ", " ντου")
original_import$V2 <- str_replace_all(original_import$V2, " הוּ", " ου")
original_import$V2 <- str_replace_all(original_import$V2, " ווּ", " βου")
original_import$V2 <- str_replace_all(original_import$V2, " זוּ", " ζου")
original_import$V2 <- str_replace_all(original_import$V2, " זּוּ", " τζου")
original_import$V2 <- str_replace_all(original_import$V2, " חוּ", " χου")
original_import$V2 <- str_replace_all(original_import$V2, " טוּ", " του")
original_import$V2 <- str_replace_all(original_import$V2, " יוּ", " γιου")
original_import$V2 <- str_replace_all(original_import$V2, " כּוּ", " κου")
original_import$V2 <- str_replace_all(original_import$V2, " כוּ", " χου")
original_import$V2 <- str_replace_all(original_import$V2, " לוּ", " λου")
original_import$V2 <- str_replace_all(original_import$V2, " מוּ", " μου")
original_import$V2 <- str_replace_all(original_import$V2, " נוּ", " νου")
original_import$V2 <- str_replace_all(original_import$V2, " סוּ", " σου")
original_import$V2 <- str_replace_all(original_import$V2, " עוּ", " ου")
original_import$V2 <- str_replace_all(original_import$V2, " פוּ", " φου")
original_import$V2 <- str_replace_all(original_import$V2, " פּוּ", " που")
original_import$V2 <- str_replace_all(original_import$V2, " צוּ", " τσου")
original_import$V2 <- str_replace_all(original_import$V2, " קוּ", " κου")
original_import$V2 <- str_replace_all(original_import$V2, " רוּ", " ρου")
original_import$V2 <- str_replace_all(original_import$V2, " שׁוּ", " σσου")
original_import$V2 <- str_replace_all(original_import$V2, " שׂוּ", " σου")
original_import$V2 <- str_replace_all(original_import$V2, " תּוּ", " του")
original_import$V2 <- str_replace_all(original_import$V2, " תוּ", " θου")

original_import$V2 <- str_replace_all(original_import$V2, "אוּ", "ου")
original_import$V2 <- str_replace_all(original_import$V2, "בּוּ", "μπου")
original_import$V2 <- str_replace_all(original_import$V2, "בוּ", "βου")
original_import$V2 <- str_replace_all(original_import$V2, "גוּ", "γου")
original_import$V2 <- str_replace_all(original_import$V2, "גּוּ", "γκου")
original_import$V2 <- str_replace_all(original_import$V2, "דוּ", "δου")
original_import$V2 <- str_replace_all(original_import$V2, "דּוּ", "ντου")
original_import$V2 <- str_replace_all(original_import$V2, "הוּ", "ου")
original_import$V2 <- str_replace_all(original_import$V2, "ווּ", "βου")
original_import$V2 <- str_replace_all(original_import$V2, "זוּ", "ζου")
original_import$V2 <- str_replace_all(original_import$V2, "זּוּ", "τζου")
original_import$V2 <- str_replace_all(original_import$V2, "חוּ", "χου")
original_import$V2 <- str_replace_all(original_import$V2, "טוּ", "του")
original_import$V2 <- str_replace_all(original_import$V2, "יוּ", "γιου")
original_import$V2 <- str_replace_all(original_import$V2, "כּוּ", "κου")
original_import$V2 <- str_replace_all(original_import$V2, "כוּ", "χου")
original_import$V2 <- str_replace_all(original_import$V2, "לוּ", "λου")
original_import$V2 <- str_replace_all(original_import$V2, "מוּ", "μου")
original_import$V2 <- str_replace_all(original_import$V2, "נוּ", "νου")
original_import$V2 <- str_replace_all(original_import$V2, "סוּ", "σου")
original_import$V2 <- str_replace_all(original_import$V2, "עוּ", "ου")
original_import$V2 <- str_replace_all(original_import$V2, "פוּ", "φου")
original_import$V2 <- str_replace_all(original_import$V2, "פּוּ", "που")
original_import$V2 <- str_replace_all(original_import$V2, "צוּ", "τσου")
original_import$V2 <- str_replace_all(original_import$V2, "קוּ", "κου")
original_import$V2 <- str_replace_all(original_import$V2, "רוּ", "ρου")
original_import$V2 <- str_replace_all(original_import$V2, "שׁוּ", "σσου")
original_import$V2 <- str_replace_all(original_import$V2, "שׂוּ", "σου")
original_import$V2 <- str_replace_all(original_import$V2, "תּוּ", "του")
original_import$V2 <- str_replace_all(original_import$V2, "תוּ", "θου")



original_import$V2 <- str_replace_all(original_import$V2, "אוֹ", "ο")
original_import$V2 <- str_replace_all(original_import$V2, "בּוֹ", "μπο")
original_import$V2 <- str_replace_all(original_import$V2, "בוֹ", "βο")
original_import$V2 <- str_replace_all(original_import$V2, "גוֹ", "γο")
original_import$V2 <- str_replace_all(original_import$V2, "גּוֹ", "γκο")
original_import$V2 <- str_replace_all(original_import$V2, "דוֹ", "δο")
original_import$V2 <- str_replace_all(original_import$V2, "דּוֹ", "ντο")
original_import$V2 <- str_replace_all(original_import$V2, "הוֹ", "ο")
original_import$V2 <- str_replace_all(original_import$V2, "ווֹ", "βο")
original_import$V2 <- str_replace_all(original_import$V2, "זוֹ", "ζο")
original_import$V2 <- str_replace_all(original_import$V2, "זּוֹ", "τζο")
original_import$V2 <- str_replace_all(original_import$V2, "חוֹ", "χο")
original_import$V2 <- str_replace_all(original_import$V2, "טוֹ", "το")
original_import$V2 <- str_replace_all(original_import$V2, "יוֹ", "γιο")
original_import$V2 <- str_replace_all(original_import$V2, "כּוֹ", "κο")
original_import$V2 <- str_replace_all(original_import$V2, "כוֹ", "χο")
original_import$V2 <- str_replace_all(original_import$V2, "לוֹ", "λο")
original_import$V2 <- str_replace_all(original_import$V2, "מוֹ", "μο")
original_import$V2 <- str_replace_all(original_import$V2, "נוֹ", "νο")
original_import$V2 <- str_replace_all(original_import$V2, "סוֹ", "σο")
original_import$V2 <- str_replace_all(original_import$V2, "עוֹ", "ο")
original_import$V2 <- str_replace_all(original_import$V2, "פוֹ", "φο")
original_import$V2 <- str_replace_all(original_import$V2, "פּוֹ", "πο")
original_import$V2 <- str_replace_all(original_import$V2, "צוֹ", "τσο")
original_import$V2 <- str_replace_all(original_import$V2, "קוֹ", "κο")
original_import$V2 <- str_replace_all(original_import$V2, "רוֹ", "ρο")
original_import$V2 <- str_replace_all(original_import$V2, "שׁוֹ", "σσο")
original_import$V2 <- str_replace_all(original_import$V2, "שׂוֹ", "σο")
original_import$V2 <- str_replace_all(original_import$V2, "תּוֹ", "το")



original_import$V2 <- str_replace_all(original_import$V2, "אַה ", "α ")
original_import$V2 <- str_replace_all(original_import$V2, "בַּה ", "μπα ")
original_import$V2 <- str_replace_all(original_import$V2, "בַה ", "βα ")
original_import$V2 <- str_replace_all(original_import$V2, "גַה ", "γα ")
original_import$V2 <- str_replace_all(original_import$V2, "גַּה ", "γκα ")
original_import$V2 <- str_replace_all(original_import$V2, "דַה ", "δα ")
original_import$V2 <- str_replace_all(original_import$V2, "דַּה ", "ντα ")
original_import$V2 <- str_replace_all(original_import$V2, "הַה ", "α ")
original_import$V2 <- str_replace_all(original_import$V2, "וַה ", "βα ")
original_import$V2 <- str_replace_all(original_import$V2, "זַה ", "ζα ")
original_import$V2 <- str_replace_all(original_import$V2, "זַּה ", "τζα ")
original_import$V2 <- str_replace_all(original_import$V2, "חַה ", "χa ")
original_import$V2 <- str_replace_all(original_import$V2, "טַה ", "τα ")
original_import$V2 <- str_replace_all(original_import$V2, "יַה ", "για ")
original_import$V2 <- str_replace_all(original_import$V2, "כַּה ", "κα ")
original_import$V2 <- str_replace_all(original_import$V2, "כַה ", "χα ")
original_import$V2 <- str_replace_all(original_import$V2, "לַה ", "λα ")
original_import$V2 <- str_replace_all(original_import$V2, "מַה ", "μα ")
original_import$V2 <- str_replace_all(original_import$V2, "נַה ", "να ")
original_import$V2 <- str_replace_all(original_import$V2, "סַה ", "σα ")
original_import$V2 <- str_replace_all(original_import$V2, "עַה ", "α ")
original_import$V2 <- str_replace_all(original_import$V2, "פַה ", "φα ")
original_import$V2 <- str_replace_all(original_import$V2, "פַּה ", "πα ")
original_import$V2 <- str_replace_all(original_import$V2, "צַה ", "τσα ")
original_import$V2 <- str_replace_all(original_import$V2, "קַה ", "κα ")
original_import$V2 <- str_replace_all(original_import$V2, "רַה ", "ρα ")
original_import$V2 <- str_replace_all(original_import$V2, "שַׁה ", "σσα ")
original_import$V2 <- str_replace_all(original_import$V2, "שַׂה ", "σα ")
original_import$V2 <- str_replace_all(original_import$V2, "תַּה ", "τα ")
original_import$V2 <- str_replace_all(original_import$V2, "תַה ", "θα ")

# Final "Hey" at the end of a word (need to avoid double alpha)
original_import$V2 <- str_replace_all(original_import$V2, "אָה", "α")
original_import$V2 <- str_replace_all(original_import$V2, "בָּה", "μπα")
original_import$V2 <- str_replace_all(original_import$V2, "בָה", "βα")
original_import$V2 <- str_replace_all(original_import$V2, "גָה", "γα")
original_import$V2 <- str_replace_all(original_import$V2, "גָּה", "γκα")
original_import$V2 <- str_replace_all(original_import$V2, "דָה", "δα")
original_import$V2 <- str_replace_all(original_import$V2, "דָּה", "ντα")
original_import$V2 <- str_replace_all(original_import$V2, "הָה", "α")
original_import$V2 <- str_replace_all(original_import$V2, "וָה", "βα")
original_import$V2 <- str_replace_all(original_import$V2, "זָה", "ζα")
original_import$V2 <- str_replace_all(original_import$V2, "זָּה", "τζα")
original_import$V2 <- str_replace_all(original_import$V2, "חָה", "χa")
original_import$V2 <- str_replace_all(original_import$V2, "טָה", "τα")
original_import$V2 <- str_replace_all(original_import$V2, "יָה", "για")
original_import$V2 <- str_replace_all(original_import$V2, "כָּה", "κα")
original_import$V2 <- str_replace_all(original_import$V2, "כָה", "χα")
original_import$V2 <- str_replace_all(original_import$V2, "לָה", "λα")
original_import$V2 <- str_replace_all(original_import$V2, "מָה", "μα")
original_import$V2 <- str_replace_all(original_import$V2, "נָה", "να")
original_import$V2 <- str_replace_all(original_import$V2, "סָה", "σα")
original_import$V2 <- str_replace_all(original_import$V2, "עָה", "α")
original_import$V2 <- str_replace_all(original_import$V2, "פָה", "φα")
original_import$V2 <- str_replace_all(original_import$V2, "פָּה", "πα")
original_import$V2 <- str_replace_all(original_import$V2, "צָה", "τσα")
original_import$V2 <- str_replace_all(original_import$V2, "קָה", "κα")
original_import$V2 <- str_replace_all(original_import$V2, "רָה", "ρα")
original_import$V2 <- str_replace_all(original_import$V2, "שָׁה", "σσα")
original_import$V2 <- str_replace_all(original_import$V2, "שָׂה", "σα")
original_import$V2 <- str_replace_all(original_import$V2, "תָּה", "τα")
original_import$V2 <- str_replace_all(original_import$V2, "תָה", "θα")

original_import$V2 <- str_replace_all(original_import$V2, "אִי", "ι")
original_import$V2 <- str_replace_all(original_import$V2, "בִּי", "μπι")
original_import$V2 <- str_replace_all(original_import$V2, "בִי", "βι")
original_import$V2 <- str_replace_all(original_import$V2, "גִי", "γι")
original_import$V2 <- str_replace_all(original_import$V2, "גִּי", "γκι")
original_import$V2 <- str_replace_all(original_import$V2, "דִי", "δι")
original_import$V2 <- str_replace_all(original_import$V2, "דִּי", "ντι")
# "הִי", 
original_import$V2 <- str_replace_all(original_import$V2, "וִי", "βι")
original_import$V2 <- str_replace_all(original_import$V2, "זִי", "ζι")
original_import$V2 <- str_replace_all(original_import$V2, "זִּי", "τζι")
original_import$V2 <- str_replace_all(original_import$V2, "חִי", "χι")
original_import$V2 <- str_replace_all(original_import$V2, "טִי", "τι")
# **יִ, γι
original_import$V2 <- str_replace_all(original_import$V2, "כִּי", "κι")
original_import$V2 <- str_replace_all(original_import$V2, "כִי", "χι")
original_import$V2 <- str_replace_all(original_import$V2, "לִי", "λι")
original_import$V2 <- str_replace_all(original_import$V2, "מִי", "μι")
original_import$V2 <- str_replace_all(original_import$V2, "נִי", "νι")
original_import$V2 <- str_replace_all(original_import$V2, "סִי", "σι")
# "עִי", 
original_import$V2 <- str_replace_all(original_import$V2, "פִי", "φι")
original_import$V2 <- str_replace_all(original_import$V2, "פִּי", "πι")
original_import$V2 <- str_replace_all(original_import$V2, "צִי", "τσι")
original_import$V2 <- str_replace_all(original_import$V2, "קִי", "κι")
original_import$V2 <- str_replace_all(original_import$V2, "רִי", "ρι")
original_import$V2 <- str_replace_all(original_import$V2, "שִׁי", "σσι")
original_import$V2 <- str_replace_all(original_import$V2, "שִׂי", "σι")
original_import$V2 <- str_replace_all(original_import$V2, "תִּי", "τι")
original_import$V2 <- str_replace_all(original_import$V2, "תִי", "θι")


# Final Endings with changed final letters

original_import$V2 <- str_replace_all(original_import$V2, "אַךְ ", "αχ ")
original_import$V2 <- str_replace_all(original_import$V2, "בַּךְ ", "μπαχ ")
original_import$V2 <- str_replace_all(original_import$V2, "בַךְ ", "βαχ ")
original_import$V2 <- str_replace_all(original_import$V2, "גַךְ ", "γαχ ")
original_import$V2 <- str_replace_all(original_import$V2, "גַּךְ ", "γκαχ ")
original_import$V2 <- str_replace_all(original_import$V2, "דַךְ ", "δαχ ")
original_import$V2 <- str_replace_all(original_import$V2, "דַּךְ ", "νταχ ")
original_import$V2 <- str_replace_all(original_import$V2, "הַךְ ", "αχ ")
original_import$V2 <- str_replace_all(original_import$V2, "וַךְ ", "βαχ ")
original_import$V2 <- str_replace_all(original_import$V2, "זַךְ ", "ζαχ ")
original_import$V2 <- str_replace_all(original_import$V2, "זַּךְ ", "τζαχ ")
original_import$V2 <- str_replace_all(original_import$V2, "טַךְ ", "ταχ ")
original_import$V2 <- str_replace_all(original_import$V2, "יַךְ ", "γιαχ ")
original_import$V2 <- str_replace_all(original_import$V2, "כַּךְ ", "καχ ")
original_import$V2 <- str_replace_all(original_import$V2, "כַךְ ", "χαχ ")
original_import$V2 <- str_replace_all(original_import$V2, "לַךְ ", "λαχ ")
original_import$V2 <- str_replace_all(original_import$V2, "מַךְ ", "μαχ ")
original_import$V2 <- str_replace_all(original_import$V2, "נַךְ ", "ναχ ")
original_import$V2 <- str_replace_all(original_import$V2, "סַךְ ", "σαχ ")
original_import$V2 <- str_replace_all(original_import$V2, "עַךְ ", "αχ ")
original_import$V2 <- str_replace_all(original_import$V2, "פַךְ ", "φαχ ")
original_import$V2 <- str_replace_all(original_import$V2, "פַּךְ ", "παχ ")
original_import$V2 <- str_replace_all(original_import$V2, "צַךְ ", "τσαχ ")
original_import$V2 <- str_replace_all(original_import$V2, "קַךְ ", "καχ ")
original_import$V2 <- str_replace_all(original_import$V2, "רַךְ ", "ραχ ")
original_import$V2 <- str_replace_all(original_import$V2, "שַׁךְ ", "σσαχ ")
original_import$V2 <- str_replace_all(original_import$V2, "שַׂךְ ", "σαχ ")
original_import$V2 <- str_replace_all(original_import$V2, "תַּךְ ", "ταχ ")
original_import$V2 <- str_replace_all(original_import$V2, "תַךְ ", "θαχ ")

# אָךְ, αχ
# בָּךְ, μπαχ
# בָךְ, βαχ
# גָךְ, γαχ
# גָּךְ, γκαχ
# דָךְ, δαχ
# דָּךְ, νταχ
# הָךְ, αχ
# וָךְ, βαχ
# זָךְ, ζαχ
# זָּךְ, τζαχ
# טָךְ, ταχ
# יָךְ, γιαχ
# כָּךְ, καχ
# כָךְ, χαχ
# לָךְ, λαχ
# מָךְ, μαχ
# נָךְ, ναχ
# סָךְ, σαχ
# עָךְ, αχ
# פָךְ, φαχ
# פָּךְ, παχ
# צָךְ, τσαχ
# קָךְ, καχ
# רָךְ, ραχ
# שָׁךְ, σσαχ
# שָׂךְ, σαχ
# תָּךְ, ταχ
# תָךְ, θαχ






original_import$V2 <- str_replace_all(original_import$V2, "אַ", "α")
original_import$V2 <- str_replace_all(original_import$V2, "בַּ", "μπα")
original_import$V2 <- str_replace_all(original_import$V2, "בַ", "βα")
original_import$V2 <- str_replace_all(original_import$V2, "גַ", "γα")
original_import$V2 <- str_replace_all(original_import$V2, "גַּ", "γκα")
original_import$V2 <- str_replace_all(original_import$V2, "דַ", "δα")
original_import$V2 <- str_replace_all(original_import$V2, "דַּ", "ντα")
original_import$V2 <- str_replace_all(original_import$V2, "הַ", "α")
original_import$V2 <- str_replace_all(original_import$V2, "וַ", "βα")
original_import$V2 <- str_replace_all(original_import$V2, "זַ", "ζα")
original_import$V2 <- str_replace_all(original_import$V2, "זַּ", "τζα")
original_import$V2 <- str_replace_all(original_import$V2, "חַ ", "αχ ")
original_import$V2 <- str_replace_all(original_import$V2, "חַ", "χα")
original_import$V2 <- str_replace_all(original_import$V2, "טַ", "τα")
original_import$V2 <- str_replace_all(original_import$V2, "יַ", "για")
original_import$V2 <- str_replace_all(original_import$V2, "כַּ", "κα")
original_import$V2 <- str_replace_all(original_import$V2, "כַ", "χα")
original_import$V2 <- str_replace_all(original_import$V2, "לַ", "λα")
original_import$V2 <- str_replace_all(original_import$V2, "מַ", "μα")
original_import$V2 <- str_replace_all(original_import$V2, "נַ", "να")
original_import$V2 <- str_replace_all(original_import$V2, "סַ", "σα")
original_import$V2 <- str_replace_all(original_import$V2, "עַ", "α")
original_import$V2 <- str_replace_all(original_import$V2, "פַ", "φα")
original_import$V2 <- str_replace_all(original_import$V2, "פַּ", "πα")
original_import$V2 <- str_replace_all(original_import$V2, "צַ", "τσα")
original_import$V2 <- str_replace_all(original_import$V2, "קַ", "κα")
original_import$V2 <- str_replace_all(original_import$V2, "רַ", "ρα")
original_import$V2 <- str_replace_all(original_import$V2, "שַׁ", "σσα")
original_import$V2 <- str_replace_all(original_import$V2, "שַׂ", "σα")
original_import$V2 <- str_replace_all(original_import$V2, "תַּ", "τα")
original_import$V2 <- str_replace_all(original_import$V2, "תַ", "θα")

original_import$V2 <- str_replace_all(original_import$V2, "אָ", "α")
original_import$V2 <- str_replace_all(original_import$V2, "בָּ", "μπα")
original_import$V2 <- str_replace_all(original_import$V2, "בָ", "βα")
original_import$V2 <- str_replace_all(original_import$V2, "גָ", "γα")
original_import$V2 <- str_replace_all(original_import$V2, "גָּ", "γκα")
original_import$V2 <- str_replace_all(original_import$V2, "דָ", "δα")
original_import$V2 <- str_replace_all(original_import$V2, "דָּ", "ντα")
original_import$V2 <- str_replace_all(original_import$V2, "הָ", "α")
original_import$V2 <- str_replace_all(original_import$V2, "וָ", "βα")
original_import$V2 <- str_replace_all(original_import$V2, "זָ", "ζα")
original_import$V2 <- str_replace_all(original_import$V2, "זָּ", "τζα")
original_import$V2 <- str_replace_all(original_import$V2, "חָ ", "αχ")
original_import$V2 <- str_replace_all(original_import$V2, "חָ", "χα")
original_import$V2 <- str_replace_all(original_import$V2, "טָ", "τα")
original_import$V2 <- str_replace_all(original_import$V2, "יָ", "για")
original_import$V2 <- str_replace_all(original_import$V2, "כָּ", "κα")
original_import$V2 <- str_replace_all(original_import$V2, "כָ", "χα")
original_import$V2 <- str_replace_all(original_import$V2, "לָ", "λα")
original_import$V2 <- str_replace_all(original_import$V2, "מָ", "μα")
original_import$V2 <- str_replace_all(original_import$V2, "נָ", "να")
original_import$V2 <- str_replace_all(original_import$V2, "סָ", "σα")
original_import$V2 <- str_replace_all(original_import$V2, "עָ", "α")
original_import$V2 <- str_replace_all(original_import$V2, "פָ", "φα")
original_import$V2 <- str_replace_all(original_import$V2, "פָּ", "πα")
original_import$V2 <- str_replace_all(original_import$V2, "צָ", "τσα")
original_import$V2 <- str_replace_all(original_import$V2, "קָ", "κα")
original_import$V2 <- str_replace_all(original_import$V2, "רָ", "ρα")
original_import$V2 <- str_replace_all(original_import$V2, "שָׁ", "σσα")
original_import$V2 <- str_replace_all(original_import$V2, "שָׂ", "σα")
original_import$V2 <- str_replace_all(original_import$V2, "תָּ", "τα")
original_import$V2 <- str_replace_all(original_import$V2, "תָ", "θα")



original_import$V2 <- str_replace_all(original_import$V2, "אִ", "ι")
original_import$V2 <- str_replace_all(original_import$V2, "בִּ", "μπι")
original_import$V2 <- str_replace_all(original_import$V2, "בִ", "βι")
original_import$V2 <- str_replace_all(original_import$V2, "גִ", "γι")
original_import$V2 <- str_replace_all(original_import$V2, "גִּ", "γκι")
original_import$V2 <- str_replace_all(original_import$V2, "דִ", "δι")
original_import$V2 <- str_replace_all(original_import$V2, "דִּ", "ντι")
# הִ, 
original_import$V2 <- str_replace_all(original_import$V2, "וִ", "βι")
original_import$V2 <- str_replace_all(original_import$V2, "זִ", "ζι")
original_import$V2 <- str_replace_all(original_import$V2, "זִּ", "τζι")
original_import$V2 <- str_replace_all(original_import$V2, "חִ", "χι")
original_import$V2 <- str_replace_all(original_import$V2, "טִ", "τι")
original_import$V2 <- str_replace_all(original_import$V2, "יִ", "γι")
original_import$V2 <- str_replace_all(original_import$V2, "כִּ", "κι")
original_import$V2 <- str_replace_all(original_import$V2, "כִ", "χι")
original_import$V2 <- str_replace_all(original_import$V2, "לִ", "λι")
original_import$V2 <- str_replace_all(original_import$V2, "מִ", "μι")
original_import$V2 <- str_replace_all(original_import$V2, "נִ", "νι")
original_import$V2 <- str_replace_all(original_import$V2, "סִ", "σι")
original_import$V2 <- str_replace_all(original_import$V2, "עִ", "ι")
original_import$V2 <- str_replace_all(original_import$V2, "פִ", "φι")
original_import$V2 <- str_replace_all(original_import$V2, "פִּ", "πι")
original_import$V2 <- str_replace_all(original_import$V2, "צִ", "τσι")
original_import$V2 <- str_replace_all(original_import$V2, "קִ", "κι")
original_import$V2 <- str_replace_all(original_import$V2, "רִ", "ρι")
original_import$V2 <- str_replace_all(original_import$V2, "שִׁ", "σσι")
original_import$V2 <- str_replace_all(original_import$V2, "שִׂ", "σι")
original_import$V2 <- str_replace_all(original_import$V2, "תִּ", "τι")
original_import$V2 <- str_replace_all(original_import$V2, "תִ", "θι")



# אְ, 
original_import$V2 <- str_replace_all(original_import$V2, "בְּ", "μπ")
original_import$V2 <- str_replace_all(original_import$V2, "בְ", "β")
original_import$V2 <- str_replace_all(original_import$V2, "גְ", "γ")
original_import$V2 <- str_replace_all(original_import$V2, "גְּ", "γκ")
original_import$V2 <- str_replace_all(original_import$V2, "דְ", "δ")
original_import$V2 <- str_replace_all(original_import$V2, "דְּ", "ντ")
# original_import$V2 <- str_replace_all(original_import$V2, "הְ", 
original_import$V2 <- str_replace_all(original_import$V2, "וְ", "β")
original_import$V2 <- str_replace_all(original_import$V2, "זְ", "ζ")
original_import$V2 <- str_replace_all(original_import$V2, "זְּ", "τζ")
original_import$V2 <- str_replace_all(original_import$V2, "חְ", "χ")
original_import$V2 <- str_replace_all(original_import$V2, "טְ", "τ")
original_import$V2 <- str_replace_all(original_import$V2, "יְ", "γι")
original_import$V2 <- str_replace_all(original_import$V2, "כְּ", "κ")
original_import$V2 <- str_replace_all(original_import$V2, "כְ", "χ")
original_import$V2 <- str_replace_all(original_import$V2, "לְ", "λ")
original_import$V2 <- str_replace_all(original_import$V2, "מְ", "μ")
original_import$V2 <- str_replace_all(original_import$V2, "נְ", "ν")
original_import$V2 <- str_replace_all(original_import$V2, "סְ", "σ")
# "עְ", 
original_import$V2 <- str_replace_all(original_import$V2, "פְ", "φ")
original_import$V2 <- str_replace_all(original_import$V2, "פְּ", "π")
original_import$V2 <- str_replace_all(original_import$V2, "צְ", "τσ")
original_import$V2 <- str_replace_all(original_import$V2, "קְ", "κ")
original_import$V2 <- str_replace_all(original_import$V2, "רְ", "ρ")
original_import$V2 <- str_replace_all(original_import$V2, "שְׁ", "σσ")
original_import$V2 <- str_replace_all(original_import$V2, "שְׂ", "σ")
original_import$V2 <- str_replace_all(original_import$V2, "תְּ", "τ")
original_import$V2 <- str_replace_all(original_import$V2, "תְ", "θ")


# א, 
original_import$V2 <- str_replace_all(original_import$V2, "בּ", "μπ")
original_import$V2 <- str_replace_all(original_import$V2, "ב", "β")
original_import$V2 <- str_replace_all(original_import$V2, "ג", "γ")
original_import$V2 <- str_replace_all(original_import$V2, "גּ", "γκ")
original_import$V2 <- str_replace_all(original_import$V2, "ד", "δ")
original_import$V2 <- str_replace_all(original_import$V2, "דּ", "ντ")
# ה, 
# ***ו- βο
original_import$V2 <- str_replace_all(original_import$V2, "ז", "ζ")
original_import$V2 <- str_replace_all(original_import$V2, "זּ", "τζ")
original_import$V2 <- str_replace_all(original_import$V2, "ח", "χ")
original_import$V2 <- str_replace_all(original_import$V2, "ט", "τ")
# י, γιο
original_import$V2 <- str_replace_all(original_import$V2, "כּ", "κ")
original_import$V2 <- str_replace_all(original_import$V2, "כ", "χ")
original_import$V2 <- str_replace_all(original_import$V2, "ל", "λ")
original_import$V2 <- str_replace_all(original_import$V2, "מ", "μ")
original_import$V2 <- str_replace_all(original_import$V2, "נ", "ν")
original_import$V2 <- str_replace_all(original_import$V2, "ס", "σ")
# ע, ο
original_import$V2 <- str_replace_all(original_import$V2, "פ", "φ")
original_import$V2 <- str_replace_all(original_import$V2, "פּ", "π")
original_import$V2 <- str_replace_all(original_import$V2, "צ", "τσ")
original_import$V2 <- str_replace_all(original_import$V2, "ק", "κ")
original_import$V2 <- str_replace_all(original_import$V2, "ר", "ρ")
original_import$V2 <- str_replace_all(original_import$V2, "שׁ", "σσ")
original_import$V2 <- str_replace_all(original_import$V2, "שׂ", "σ")
original_import$V2 <- str_replace_all(original_import$V2, "תּ", "τ")
original_import$V2 <- str_replace_all(original_import$V2, "ת", "θ")




# אֹ, ο
# ֹבּ, μπο
# ֹב, βο
# ֹג, γο
# ֹגּ, γκο
# ֹד, δο
# ֹדּ, ντο
# ֹה, ο
# # ***ו- βο
# ֹז, ζο
# ֹזּ, τζο
# ֹח, χο
# ֹט, το
# ֹי, γιο
# ֹכּ, κο
# ֹכ, χο
# ֹֹֹל, λο
# ֹמ, μο
# ֹנ, νο
# ֹס, σο
# ֹע, ο
# ֹפ, φο
# ֹפּ, πο
# ֹצ, τσο
# ֹק, κο
# ֹר, ρο
# ֹשׁ, σσο
# ֹשׂ, σο
# ֹתּ, το
# ֹת, θο


# ךְ
# ךּ
# ם - μ
# ן - ν
# ף - φ
# ףּ - π
# ךָ - χα
# ץ - τς



write.table(original_import,"GreekOutput.txt", sep=";",col.names = FALSE, row.names = FALSE)