//
//  Languages.swift
//  textTranslator
//
//  Created by Mertcan Yigin on 22/09/15.
//  Copyright © 2015 Mertcan Yigin. All rights reserved.
//

import Foundation

enum Languages: String, CustomStringConvertible{
    case Afar = "aa"
    case Abkhazian = "ab"
    case Afrikaans = "af"
    case Akan = "ak"
    case Amharic = "am"
    case Arabic = "ar"
    case Assamese = "as"
    case Aymara = "ay"
    case Azerbaijani = "az"
    case Bashkir = "ba"
    case Belarusian = "be"
    case Bulgarian = "bg"
    case Bihari = "bh"
    case Bislama = "bi"
    case Bengali = "bn"
    case Tibetan = "bo"
    case Breton = "br"
    case Bosnian = "bs"
    case Catalan = "ca"
    case Cebuano = "ceb"
    case Cherokee = "chr"
    case Corsican = "co"
    case Seselwa = "crs"
    case Czech = "cs"
    case Welsh = "cy"
    case Danish = "da"
    case German = "de"
    case Dhivehi = "dv"
    case Dzongkha = "dz"
    case Greek = "el"
    case English = "en"
    case Esperanto = "eo"
    case Spanish = "es"
    case Estonian = "et"
    case Basque = "eu"
    case Persian = "fa"
    case Finnish = "fi"
    case Fijian = "fj"
    case Faroese = "fo"
    case French = "fr"
    case Frisian = "fy"
    case Irish = "ga"
    case ScotsGaelic = "gd"
    case Galician = "gl"
    case Guarani = "gn"
    case Gujarati = "gu"
    case Manx = "gv"
    case Hausa = "ha"
    case Hawaiian = "haw"
    case Hindi = "hi"
    case Hmong = "hmn"
    case Croatian = "hr"
    case HaitianCreole = "ht"
    case Hungarian = "hu"
    case Armenian = "hy"
    case Interlingua = "ia"
    case Indonesian = "id"
    case Interlingue = "ie"
    case Igbo = "ig"
    case Inupiak = "ik"
    case Icelandic = "is"
    case Italian = "it"
    case Inuktitut = "iu"
    case Hebrew = "iw"
    case Japanese = "ja"
    case Javanese = "jw"
    case Georgian = "ka"
    case Khasi = "kha"
    case Kazakh = "kk"
    case Greenlandic = "kl"
    case Khmer = "km"
    case Kannada = "kn"
    case Korean = "ko"
    case Kashmiri = "ks"
    case Kurdish = "ku"
    case Kyrgyz = "ky"
    case Latin = "la"
    case Luxembourgish = "lb"
    case Ganda = "lg"
    case Limbu = "lif"
    case Lingala = "ln"
    case Laothian = "lo"
    case Lithuanian = "lt"
    case Latvian = "lv"
    case MauritianCreole = "mfe"
    case Malagasy = "mg"
    case Maori = "mi"
    case Macedonian = "mk"
    case Malayalam = "ml"
    case Mongolian = "mn"
    case Marathi = "mr"
    case Malay = "ms"
    case Maltese = "mt"
    case Burmese = "my"
    case Nauru = "na"
    case Nepali = "ne"
    case Dutch = "nl"
    case Norwegian = "no"
    case Ndebele = "nr"
    case Pedi = "nso"
    case Nyanja = "ny"
    case Occitan = "oc"
    case Oromo = "om"
    case Oriya = "or"
    case Punjabi = "pa"
    case Polish = "pl"
    case Pashto = "ps"
    case Portuguese = "pt"
    case Quechua = "qu"
    case RhaetoRomance = "rm"
    case Rundi = "rn"
    case Romanian = "ro"
    case Russian = "ru"
    case Kinyarwanda = "rw"
    case Sanskrit = "sa"
    case Scots = "sco"
    case Sindhi = "sd"
    case Sango = "sg"
    case Sinhalese = "si"
    case Slovak = "sk"
    case Slovenian = "sl"
    case Samoan = "sm"
    case Shona = "sn"
    case Somali = "so"
    case Albanian = "sq"
    case Serbian = "sr"
    case Siswant = "ss"
    case Sesotho = "st"
    case Sundanese = "su"
    case Swedish = "sv"
    case Swahili = "sw"
    case Syriac = "syr"
    case Tamil = "ta"
    case Telugu = "te"
    case Tajik = "tg"
    case Thai = "th"
    case Tigrinya = "ti"
    case Turkmen = "tk"
    case Tagalog = "tl"
    case Tswana = "tn"
    case Tonga = "to"
    case Turkish = "tr"
    case Tsonga = "ts"
    case Tatar = "tt"
    case Uighur = "ug"
    case Ukrainian = "uk"
    case Urdu = "ur"
    case Uzbek = "uz"
    case Venda = "ve"
    case Vietnamese = "vi"
    case Volapuk = "vo"
    case WarayPhilippines = "war"
    case Wolof = "wo"
    case Xhosa = "xh"
    case Yiddish = "yi"
    case Yoruba = "yo"
    case Zhuang = "za"
    case Chinese = "zh"
    case Chineset = "zh-Hant"
    case Zulu = "zu"
    
    
    static var count:Int{return self.array.count}
    static var array: Array<Languages> = [Languages.Afar ,Languages.Abkhazian ,Languages.Afrikaans ,Languages.Akan ,Languages.Amharic ,Languages.Arabic ,Languages.Assamese ,Languages.Aymara ,Languages.Azerbaijani ,Languages.Bashkir ,Languages.Belarusian ,Languages.Bulgarian ,Languages.Bihari ,Languages.Bislama ,Languages.Bengali ,Languages.Tibetan ,Languages.Breton ,Languages.Bosnian ,Languages.Catalan ,Languages.Cebuano ,Languages.Cherokee ,Languages.Corsican ,Languages.Seselwa ,Languages.Czech ,Languages.Welsh ,Languages.Danish ,Languages.German ,Languages.Dhivehi ,Languages.Dzongkha ,Languages.Greek ,Languages.English ,Languages.Esperanto ,Languages.Spanish ,Languages.Estonian ,Languages.Basque ,Languages.Persian ,Languages.Finnish ,Languages.Fijian ,Languages.Faroese ,Languages.French ,Languages.Frisian ,Languages.Irish ,Languages.ScotsGaelic ,Languages.Galician ,Languages.Guarani ,Languages.Gujarati ,Languages.Manx ,Languages.Hausa ,Languages.Hawaiian ,Languages.Hindi ,Languages.Hmong ,Languages.Croatian ,Languages.HaitianCreole ,Languages.Hungarian ,Languages.Armenian ,Languages.Interlingua ,Languages.Indonesian ,Languages.Interlingue ,Languages.Igbo ,Languages.Inupiak ,Languages.Icelandic ,Languages.Italian ,Languages.Inuktitut ,Languages.Hebrew ,Languages.Japanese ,Languages.Javanese ,Languages.Georgian ,Languages.Khasi ,Languages.Kazakh ,Languages.Greenlandic ,Languages.Khmer ,Languages.Kannada ,Languages.Korean ,Languages.Kashmiri ,Languages.Kurdish ,Languages.Kyrgyz ,Languages.Latin ,Languages.Luxembourgish ,Languages.Ganda ,Languages.Limbu ,Languages.Lingala ,Languages.Laothian ,Languages.Lithuanian ,Languages.Latvian ,Languages.MauritianCreole ,Languages.Malagasy ,Languages.Maori ,Languages.Macedonian ,Languages.Malayalam ,Languages.Mongolian ,Languages.Marathi ,Languages.Malay ,Languages.Maltese ,Languages.Burmese ,Languages.Nauru ,Languages.Nepali ,Languages.Dutch ,Languages.Norwegian ,Languages.Ndebele ,Languages.Pedi ,Languages.Nyanja ,Languages.Occitan ,Languages.Oromo ,Languages.Oriya ,Languages.Punjabi ,Languages.Polish ,Languages.Pashto ,Languages.Portuguese ,Languages.Quechua ,Languages.RhaetoRomance ,Languages.Rundi ,Languages.Romanian ,Languages.Russian ,Languages.Kinyarwanda ,Languages.Sanskrit ,Languages.Scots ,Languages.Sindhi ,Languages.Sango ,Languages.Sinhalese ,Languages.Slovak ,Languages.Slovenian ,Languages.Samoan ,Languages.Shona ,Languages.Somali ,Languages.Albanian ,Languages.Serbian ,Languages.Siswant ,Languages.Sesotho ,Languages.Sundanese ,Languages.Swedish ,Languages.Swahili ,Languages.Syriac ,Languages.Tamil ,Languages.Telugu ,Languages.Tajik ,Languages.Thai ,Languages.Tigrinya ,Languages.Turkmen ,Languages.Tagalog ,Languages.Tswana ,Languages.Tonga ,Languages.Turkish ,Languages.Tsonga ,Languages.Tatar ,Languages.Uighur ,Languages.Ukrainian ,Languages.Urdu ,Languages.Uzbek ,Languages.Venda ,Languages.Vietnamese ,Languages.Volapuk ,Languages.WarayPhilippines ,Languages.Wolof ,Languages.Xhosa ,Languages.Yiddish ,Languages.Yoruba ,Languages.Zhuang ,Languages.Chinese ,Languages.Chineset ,Languages.Zulu]
    
    var description:String{
        switch self{
        case .Afar: return "Afar"
        case .Abkhazian: return "Abkhazian"
        case .Afrikaans: return "Afrikaans"
        case .Akan: return "Akan"
        case .Amharic: return "Amharic"
        case .Arabic: return "Arabic"
        case .Assamese: return "Assamese"
        case .Aymara: return "Aymara"
        case .Azerbaijani: return "Azerbaijani"
        case .Bashkir: return "Bashkir"
        case .Belarusian: return "Belarusian"
        case .Bulgarian: return "Bulgarian"
        case .Bihari: return "Bihari"
        case .Bislama: return "Bislama"
        case .Bengali: return "Bengali"
        case .Tibetan: return "Tibetan"
        case .Breton: return "Breton"
        case .Bosnian: return "Bosnian"
        case .Catalan: return "Catalan"
        case .Cebuano: return "Cebuano"
        case .Cherokee: return "Cherokee"
        case .Corsican: return "Corsican"
        case .Seselwa: return "Seselwa"
        case .Czech: return "Czech"
        case .Welsh: return "Welsh"
        case .Danish: return "Danish"
        case .German: return "German"
        case .Dhivehi: return "Dhivehi"
        case .Dzongkha: return "Dzongkha"
        case .Greek: return "Greek"
        case .English: return "English"
        case .Esperanto: return "Esperanto"
        case .Spanish: return "Spanish"
        case .Estonian: return "Estonian"
        case .Basque: return "Basque"
        case .Persian: return "Persian"
        case .Finnish: return "Finnish"
        case .Fijian: return "Fijian"
        case .Faroese: return "Faroese"
        case .French: return "French"
        case .Frisian: return "Frisian"
        case .Irish: return "Irish"
        case .ScotsGaelic: return "Scots Gaelic"
        case .Galician: return "Galician"
        case .Guarani: return "Guarani"
        case .Gujarati: return "Gujarati"
        case .Manx: return "Manx"
        case .Hausa: return "Hausa"
        case .Hawaiian: return "Hawaiian"
        case .Hindi: return "Hindi"
        case .Hmong: return "Hmong"
        case .Croatian: return "Croatian"
        case .HaitianCreole: return "Haitian Creole"
        case .Hungarian: return "Hungarian"
        case .Armenian: return "Armenian"
        case .Interlingua: return "Interlingua"
        case .Indonesian: return "Indonesian"
        case .Interlingue: return "Interlingue"
        case .Igbo: return "Igbo"
        case .Inupiak: return "Inupiak"
        case .Icelandic: return "Icelandic"
        case .Italian: return "Italian"
        case .Inuktitut: return "Inuktitut"
        case .Hebrew: return "Hebrew"
        case .Japanese: return "Japanese"
        case .Javanese: return "Javanese"
        case .Georgian: return "Georgian"
        case .Khasi: return "Khasi"
        case .Kazakh: return "Kazakh"
        case .Greenlandic: return "Greenlandic"
        case .Khmer: return "Khmer"
        case .Kannada: return "Kannada"
        case .Korean: return "Korean"
        case .Kashmiri: return "Kashmiri"
        case .Kurdish: return "Kurdish"
        case .Kyrgyz: return "Kyrgyz"
        case .Latin: return "Latin"
        case .Luxembourgish: return "Luxembourgish"
        case .Ganda: return "Ganda"
        case .Limbu: return "Limbu"
        case .Lingala: return "Lingala"
        case .Laothian: return "Laothian"
        case .Lithuanian: return "Lithuanian"
        case .Latvian: return "Latvian"
        case .MauritianCreole: return "Mauritian Creole"
        case .Malagasy: return "Malagasy"
        case .Maori: return "Maori"
        case .Macedonian: return "Macedonian"
        case .Malayalam: return "Malayalam"
        case .Mongolian: return "Mongolian"
        case .Marathi: return "Marathi"
        case .Malay: return "Malay"
        case .Maltese: return "Maltese"
        case .Burmese: return "Burmese"
        case .Nauru: return "Nauru"
        case .Nepali: return "Nepali"
        case .Dutch: return "Dutch"
        case .Norwegian: return "Norwegian"
        case .Ndebele: return "Ndebele"
        case .Pedi: return "Pedi"
        case .Nyanja: return "Nyanja"
        case .Occitan: return "Occitan"
        case .Oromo: return "Oromo"
        case .Oriya: return "Oriya"
        case .Punjabi: return "Punjabi"
        case .Polish: return "Polish"
        case .Pashto: return "Pashto"
        case .Portuguese: return "Portuguese"
        case .Quechua: return "Quechua"
        case .RhaetoRomance: return "Rhaeto Romance"
        case .Rundi: return "Rundi"
        case .Romanian: return "Romanian"
        case .Russian: return "Russian"
        case .Kinyarwanda: return "Kinyarwanda"
        case .Sanskrit: return "Sanskrit"
        case .Scots: return "Scots"
        case .Sindhi: return "Sindhi"
        case .Sango: return "Sango"
        case .Sinhalese: return "Sinhalese"
        case .Slovak: return "Slovak"
        case .Slovenian: return "Slovenian"
        case .Samoan: return "Samoan"
        case .Shona: return "Shona"
        case .Somali: return "Somali"
        case .Albanian: return "Albanian"
        case .Serbian: return "Serbian"
        case .Siswant: return "Siswant"
        case .Sesotho: return "Sesotho"
        case .Sundanese: return "Sundanese"
        case .Swedish: return "Swedish"
        case .Swahili: return "Swahili"
        case .Syriac: return "Syriac"
        case .Tamil: return "Tamil"
        case .Telugu: return "Telugu"
        case .Tajik: return "Tajik"
        case .Thai: return "Thai"
        case .Tigrinya: return "Tigrinya"
        case .Turkmen: return "Turkmen"
        case .Tagalog: return "Tagalog"
        case .Tswana: return "Tswana"
        case .Tonga: return "Tonga"
        case .Turkish: return "Turkish"
        case .Tsonga: return "Tsonga"
        case .Tatar: return "Tatar"
        case .Uighur: return "Uighur"
        case .Ukrainian: return "Ukrainian"
        case .Urdu: return "Urdu"
        case .Uzbek: return "Uzbek"
        case .Venda: return "Venda"
        case .Vietnamese: return "Vietnamese"
        case .Volapuk: return "Volapuk"
        case .WarayPhilippines: return "Waray Philippines"
        case .Wolof: return "Wolof"
        case .Xhosa: return "Xhosa"
        case .Yiddish: return "Yiddish"
        case .Yoruba: return "Yoruba"
        case .Zhuang: return "Zhuang"
        case .Chinese: return "Chinese"
        case .Chineset: return "Chineset"
        case .Zulu: return "Zulu"
        }
    }
}

