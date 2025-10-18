; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [367 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [728 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 26230656, ; 3: Microsoft.Extensions.DependencyModel => 0x1903f80 => 204
	i32 32687329, ; 4: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 283
	i32 34715100, ; 5: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 317
	i32 34839235, ; 6: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39485524, ; 7: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 8: System.Threading.Thread => 0x28aa24d => 145
	i32 65960268, ; 9: Microsoft.Win32.SystemEvents.dll => 0x3ee794c => 229
	i32 66541672, ; 10: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 11: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 358
	i32 68219467, ; 12: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 13: Microsoft.Maui.Graphics.dll => 0x44bb714 => 228
	i32 82292897, ; 14: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 15: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 301
	i32 117431740, ; 16: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 17: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 301
	i32 122350210, ; 18: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 123514077, ; 19: EPPlus.dll => 0x75cacdd => 175
	i32 134690465, ; 20: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 321
	i32 142721839, ; 21: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 22: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 23: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 24: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 257
	i32 176265551, ; 25: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 26: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 303
	i32 184328833, ; 27: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 28: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 355
	i32 199333315, ; 29: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 356
	i32 205061960, ; 30: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 31: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 255
	i32 220171995, ; 32: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 33: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 277
	i32 230752869, ; 34: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 35: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 36: System.Globalization => 0xdd133ce => 42
	i32 244348769, ; 37: Microsoft.AspNetCore.Components.Authorization => 0xe907761 => 182
	i32 246610117, ; 38: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 254259026, ; 39: Microsoft.AspNetCore.Components.dll => 0xf27af52 => 181
	i32 261689757, ; 40: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 260
	i32 276479776, ; 41: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 42: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 279
	i32 280482487, ; 43: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 276
	i32 280992041, ; 44: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 327
	i32 291076382, ; 45: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 46: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 47: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 355
	i32 318968648, ; 48: Xamarin.AndroidX.Activity.dll => 0x13031348 => 246
	i32 321597661, ; 49: System.Numerics => 0x132b30dd => 83
	i32 336156722, ; 50: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 340
	i32 342366114, ; 51: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 278
	i32 347068432, ; 52: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 233
	i32 356389973, ; 53: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 339
	i32 360082299, ; 54: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 55: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 56: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 57: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 58: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 59: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 60: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 61: _Microsoft.Android.Resource.Designer => 0x17969339 => 363
	i32 403441872, ; 62: WindowsBase => 0x180c08d0 => 165
	i32 435591531, ; 63: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 351
	i32 441335492, ; 64: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 261
	i32 442565967, ; 65: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 66: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 274
	i32 451504562, ; 67: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 68: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 69: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 70: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 71: System.dll => 0x1bff388e => 164
	i32 476646585, ; 72: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 276
	i32 486930444, ; 73: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 289
	i32 498788369, ; 74: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 75: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 338
	i32 503918385, ; 76: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 332
	i32 513247710, ; 77: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 214
	i32 526420162, ; 78: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 79: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 321
	i32 530272170, ; 80: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 81: Microsoft.Extensions.Logging => 0x20216150 => 210
	i32 540030774, ; 82: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 83: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 84: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 85: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 555608411, ; 86: PruebaWebNueva.Client.SharedUI.dll => 0x211de95b => 360
	i32 557405415, ; 87: Jsr305Binding => 0x213954e7 => 314
	i32 569601784, ; 88: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 312
	i32 571435654, ; 89: Microsoft.Extensions.FileProviders.Embedded.dll => 0x220f6a86 => 207
	i32 577335427, ; 90: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 586578074, ; 91: MimeKit => 0x22f6789a => 230
	i32 592146354, ; 92: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 346
	i32 601371474, ; 93: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 94: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 95: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 96: Xamarin.AndroidX.CustomView => 0x2568904f => 266
	i32 627931235, ; 97: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 344
	i32 639843206, ; 98: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 272
	i32 643868501, ; 99: System.Net => 0x2660a755 => 81
	i32 662205335, ; 100: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 101: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 308
	i32 666292255, ; 102: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 253
	i32 672442732, ; 103: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 104: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 105: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 326
	i32 690569205, ; 106: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 107: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 323
	i32 693804605, ; 108: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 109: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 110: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 318
	i32 700358131, ; 111: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 112: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 341
	i32 709152836, ; 113: System.Security.Cryptography.Pkcs.dll => 0x2a44d044 => 239
	i32 709557578, ; 114: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 329
	i32 720511267, ; 115: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 322
	i32 722857257, ; 116: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 117: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 748832960, ; 118: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 231
	i32 752232764, ; 119: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 120: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 243
	i32 759454413, ; 121: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 122: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 123: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 124: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 350
	i32 782295100, ; 125: PruebaWebNueva.Application.dll => 0x2ea0e03c => 359
	i32 789151979, ; 126: Microsoft.Extensions.Options => 0x2f0980eb => 213
	i32 790371945, ; 127: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 267
	i32 794464650, ; 128: EPPlus.Interfaces => 0x2f5a918a => 176
	i32 804008546, ; 129: Microsoft.AspNetCore.Components.WebView.Maui => 0x2fec3262 => 186
	i32 804715423, ; 130: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 131: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 281
	i32 809851609, ; 132: System.Drawing.Common.dll => 0x30455ad9 => 236
	i32 823281589, ; 133: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 134: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 135: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 136: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 137: Xamarin.AndroidX.Print => 0x3246f6cd => 294
	i32 873119928, ; 138: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 139: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 140: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 141: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 142: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 143: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 353
	i32 928116545, ; 144: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 317
	i32 952186615, ; 145: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 146: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 322
	i32 966729478, ; 147: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 315
	i32 967690846, ; 148: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 278
	i32 975236339, ; 149: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 150: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 151: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 152: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 153: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 154: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 999186168, ; 155: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 209
	i32 1001831731, ; 156: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 157: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 298
	i32 1019214401, ; 158: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 159: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 203
	i32 1029334545, ; 160: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 328
	i32 1031528504, ; 161: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 316
	i32 1035644815, ; 162: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 251
	i32 1036536393, ; 163: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 164: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 165: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 285
	i32 1067306892, ; 166: GoogleGson => 0x3f9dcf8c => 178
	i32 1082857460, ; 167: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 168: Xamarin.Kotlin.StdLib => 0x409e66d8 => 319
	i32 1098259244, ; 169: System => 0x41761b2c => 164
	i32 1106973742, ; 170: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x41fb142e => 200
	i32 1117853822, ; 171: PruebaWebNueva.Maui => 0x42a1187e => 0
	i32 1118262833, ; 172: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 341
	i32 1121599056, ; 173: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 284
	i32 1127624469, ; 174: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 212
	i32 1138436374, ; 175: Microsoft.Data.SqlClient.dll => 0x43db2916 => 188
	i32 1145483052, ; 176: System.Windows.Extensions.dll => 0x4446af2c => 241
	i32 1149092582, ; 177: Xamarin.AndroidX.Window => 0x447dc2e6 => 311
	i32 1157931901, ; 178: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 191
	i32 1168523401, ; 179: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 347
	i32 1170634674, ; 180: System.Web.dll => 0x45c677b2 => 153
	i32 1173126369, ; 181: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 205
	i32 1175144683, ; 182: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 307
	i32 1178241025, ; 183: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 292
	i32 1202000627, ; 184: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 191
	i32 1203215381, ; 185: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 345
	i32 1204270330, ; 186: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 253
	i32 1204575371, ; 187: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 196
	i32 1208641965, ; 188: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 189: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 190: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 343
	i32 1243150071, ; 191: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 312
	i32 1253011324, ; 192: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 193: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 327
	i32 1264511973, ; 194: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 302
	i32 1267360935, ; 195: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 306
	i32 1273260888, ; 196: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 258
	i32 1275534314, ; 197: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 323
	i32 1278448581, ; 198: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 250
	i32 1292207520, ; 199: SQLitePCLRaw.core.dll => 0x4d0585a0 => 232
	i32 1293217323, ; 200: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 269
	i32 1309188875, ; 201: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 202: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 311
	i32 1323107227, ; 203: PruebaWebNueva.Maui.dll => 0x4edd039b => 0
	i32 1324164729, ; 204: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 205: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 206: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 207: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 357
	i32 1376866003, ; 208: Xamarin.AndroidX.SavedState => 0x52114ed3 => 298
	i32 1379779777, ; 209: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 210: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 211: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 262
	i32 1408764838, ; 212: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 213: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 214: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 215: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 325
	i32 1434145427, ; 216: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 217: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 315
	i32 1439761251, ; 218: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 219: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 220: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1454105418, ; 221: Microsoft.Extensions.FileProviders.Composite => 0x56abe34a => 206
	i32 1457743152, ; 222: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 223: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1460893475, ; 224: System.IdentityModel.Tokens.Jwt => 0x57137723 => 237
	i32 1461004990, ; 225: es\Microsoft.Maui.Controls.resources => 0x57152abe => 331
	i32 1461234159, ; 226: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 227: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 228: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 229: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 252
	i32 1470490898, ; 230: Microsoft.Extensions.Primitives => 0x57a5e912 => 214
	i32 1479011226, ; 231: EPPlus => 0x5827eb9a => 175
	i32 1479771757, ; 232: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 233: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 234: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 235: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 299
	i32 1490351284, ; 236: Microsoft.Data.Sqlite.dll => 0x58d4f4b4 => 189
	i32 1493001747, ; 237: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 335
	i32 1498168481, ; 238: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 216
	i32 1514721132, ; 239: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 330
	i32 1521091094, ; 240: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 209
	i32 1536373174, ; 241: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 242: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 243: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1546581739, ; 244: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x5c2ef6eb => 186
	i32 1550322496, ; 245: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 246: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 350
	i32 1551954004, ; 247: Microsoft.IO.RecyclableMemoryStream.dll => 0x5c80f054 => 221
	i32 1565862583, ; 248: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 249: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 250: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 251: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 252: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 268
	i32 1592978981, ; 253: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 254: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 316
	i32 1601112923, ; 255: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 256: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 257: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 258: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 288
	i32 1622358360, ; 259: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 260: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 310
	i32 1628113371, ; 261: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x610b09db => 219
	i32 1631539578, ; 262: EPPlus.System.Drawing.dll => 0x613f517a => 177
	i32 1632842087, ; 263: Microsoft.Extensions.Configuration.Json => 0x61533167 => 201
	i32 1635184631, ; 264: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 272
	i32 1636350590, ; 265: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 265
	i32 1639515021, ; 266: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 267: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 268: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1654881142, ; 269: Microsoft.AspNetCore.Components.WebView => 0x62a37b76 => 185
	i32 1657153582, ; 270: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 271: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 304
	i32 1658251792, ; 272: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 313
	i32 1670060433, ; 273: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 260
	i32 1675553242, ; 274: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 275: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 276: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 277: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1688112883, ; 278: Microsoft.Data.Sqlite => 0x649e8ef3 => 189
	i32 1689493916, ; 279: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 190
	i32 1691477237, ; 280: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 281: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 282: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 320
	i32 1701541528, ; 283: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1711441057, ; 284: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 233
	i32 1720223769, ; 285: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 281
	i32 1726116996, ; 286: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 287: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 288: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 256
	i32 1733338956, ; 289: MailKit => 0x6750a74c => 179
	i32 1736233607, ; 290: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 348
	i32 1743415430, ; 291: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 326
	i32 1744735666, ; 292: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746115085, ; 293: System.IO.Pipelines.dll => 0x68139a0d => 238
	i32 1746316138, ; 294: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 295: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 296: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1760259689, ; 297: Microsoft.AspNetCore.Components.Web.dll => 0x68eb6e69 => 184
	i32 1763938596, ; 298: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 299: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 300: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 303
	i32 1770582343, ; 301: Microsoft.Extensions.Logging.dll => 0x6988f147 => 210
	i32 1776026572, ; 302: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 303: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 304: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 305: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 342
	i32 1788241197, ; 306: Xamarin.AndroidX.Fragment => 0x6a96652d => 274
	i32 1793755602, ; 307: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 334
	i32 1794500907, ; 308: Microsoft.Identity.Client.dll => 0x6af5e92b => 215
	i32 1808609942, ; 309: Xamarin.AndroidX.Loader => 0x6bcd3296 => 288
	i32 1813058853, ; 310: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 319
	i32 1813201214, ; 311: Xamarin.Google.Android.Material => 0x6c13413e => 313
	i32 1818569960, ; 312: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 293
	i32 1818787751, ; 313: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 314: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 315: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 316: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 211
	i32 1829150748, ; 317: System.Windows.Extensions => 0x6d06a01c => 241
	i32 1836174307, ; 318: PruebaWebNueva.Client.SharedUI => 0x6d71cbe3 => 360
	i32 1842015223, ; 319: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 354
	i32 1847515442, ; 320: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 243
	i32 1853025655, ; 321: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 351
	i32 1858542181, ; 322: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 323: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1871986876, ; 324: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0x6f9440bc => 219
	i32 1875935024, ; 325: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 333
	i32 1879696579, ; 326: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 327: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 254
	i32 1886040351, ; 328: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x706ab11f => 193
	i32 1888955245, ; 329: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 330: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 331: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 332: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 333: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 334: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 335: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 336: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 300
	i32 1968388702, ; 337: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 197
	i32 1983156543, ; 338: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 320
	i32 1985761444, ; 339: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 245
	i32 1986222447, ; 340: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 220
	i32 2003115576, ; 341: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 330
	i32 2011961780, ; 342: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2014489277, ; 343: Microsoft.EntityFrameworkCore.Sqlite => 0x7812aabd => 193
	i32 2019465201, ; 344: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 285
	i32 2025202353, ; 345: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 325
	i32 2026931361, ; 346: MailKit.dll => 0x78d084a1 => 179
	i32 2031763787, ; 347: Xamarin.Android.Glide => 0x791a414b => 242
	i32 2045470958, ; 348: System.Private.Xml => 0x79eb68ee => 88
	i32 2048278909, ; 349: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 199
	i32 2055257422, ; 350: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 280
	i32 2060060697, ; 351: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 352: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 329
	i32 2070888862, ; 353: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2072397586, ; 354: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 208
	i32 2079903147, ; 355: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 356: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2103459038, ; 357: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 234
	i32 2105267746, ; 358: PruebaWebNueva.Application => 0x7d7bd622 => 359
	i32 2127167465, ; 359: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 360: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143465592, ; 361: Microsoft.IO.RecyclableMemoryStream => 0x7fc2b078 => 221
	i32 2143790110, ; 362: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 363: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 364: Microsoft.Maui => 0x80bd55ad => 226
	i32 2169148018, ; 365: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 337
	i32 2181898931, ; 366: Microsoft.Extensions.Options.dll => 0x820d22b3 => 213
	i32 2192057212, ; 367: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 211
	i32 2192166651, ; 368: Microsoft.AspNetCore.Components.Authorization.dll => 0x82a9cefb => 182
	i32 2193016926, ; 369: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2197979891, ; 370: Microsoft.Extensions.DependencyModel.dll => 0x830282f3 => 204
	i32 2201107256, ; 371: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 324
	i32 2201231467, ; 372: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 373: it\Microsoft.Maui.Controls.resources => 0x839595db => 339
	i32 2217644978, ; 374: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 307
	i32 2222056684, ; 375: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 376: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 289
	i32 2252106437, ; 377: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2252897993, ; 378: Microsoft.EntityFrameworkCore => 0x86487ec9 => 190
	i32 2253551641, ; 379: Microsoft.IdentityModel.Protocols => 0x86527819 => 218
	i32 2256313426, ; 380: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 381: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 382: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 198
	i32 2267999099, ; 383: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 244
	i32 2270573516, ; 384: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 333
	i32 2279755925, ; 385: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 296
	i32 2293034957, ; 386: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 387: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 388: System.Net.Mail => 0x88ffe49e => 66
	i32 2298796049, ; 389: EPPlus.System.Drawing => 0x8904d811 => 177
	i32 2303942373, ; 390: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 343
	i32 2305521784, ; 391: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 392: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 248
	i32 2320631194, ; 393: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 394: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 395: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 396: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 397: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2369706906, ; 398: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 217
	i32 2371007202, ; 399: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 197
	i32 2378619854, ; 400: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 401: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 402: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 338
	i32 2401565422, ; 403: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 404: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 271
	i32 2411328690, ; 405: Microsoft.AspNetCore.Components => 0x8fb9f4b2 => 181
	i32 2421380589, ; 406: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 407: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 258
	i32 2427813419, ; 408: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 335
	i32 2435356389, ; 409: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 410: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2442556106, ; 411: Microsoft.JSInterop.dll => 0x919672ca => 222
	i32 2454642406, ; 412: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 413: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 414: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465273461, ; 415: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 231
	i32 2465532216, ; 416: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 261
	i32 2471841756, ; 417: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 418: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 419: Microsoft.Maui.Controls => 0x93dba8a1 => 224
	i32 2483903535, ; 420: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 421: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490828617, ; 422: PruebaWebNueva.Domain.dll => 0x94770749 => 361
	i32 2490993605, ; 423: System.AppContext.dll => 0x94798bc5 => 6
	i32 2498657740, ; 424: BouncyCastle.Cryptography.dll => 0x94ee7dcc => 174
	i32 2501346920, ; 425: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 426: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 283
	i32 2512376485, ; 427: PruebaWebNueva.Infrastructure => 0x95bfd2a5 => 362
	i32 2522472828, ; 428: Xamarin.Android.Glide.dll => 0x9659e17c => 242
	i32 2537015816, ; 429: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 180
	i32 2538310050, ; 430: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2548432851, ; 431: EPPlus.Interfaces.dll => 0x97e5ffd3 => 176
	i32 2550873716, ; 432: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 336
	i32 2562349572, ; 433: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 434: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 435: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 284
	i32 2581819634, ; 436: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 306
	i32 2585220780, ; 437: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 438: System.Net.Ping => 0x9a20430d => 69
	i32 2585813321, ; 439: Microsoft.AspNetCore.Components.Forms => 0x9a206149 => 183
	i32 2589602615, ; 440: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2592341985, ; 441: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 205
	i32 2593496499, ; 442: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 345
	i32 2595035327, ; 443: PruebaWebNueva.Domain => 0x9aad18bf => 361
	i32 2605712449, ; 444: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 324
	i32 2615233544, ; 445: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 275
	i32 2616218305, ; 446: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 212
	i32 2617129537, ; 447: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 448: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 449: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 265
	i32 2624644809, ; 450: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 270
	i32 2626831493, ; 451: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 340
	i32 2627185994, ; 452: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 453: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 454: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 279
	i32 2634653062, ; 455: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 192
	i32 2640290731, ; 456: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 217
	i32 2663391936, ; 457: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 244
	i32 2663698177, ; 458: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 459: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 460: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 461: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 462: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2692077919, ; 463: Microsoft.AspNetCore.Components.WebView.dll => 0xa075d95f => 185
	i32 2693849962, ; 464: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 465: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 304
	i32 2715334215, ; 466: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 467: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 468: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 469: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 470: Xamarin.AndroidX.Activity => 0xa2e0939b => 246
	i32 2735172069, ; 471: System.Threading.Channels => 0xa30769e5 => 139
	i32 2735631878, ; 472: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 180
	i32 2737747696, ; 473: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 252
	i32 2740051746, ; 474: Microsoft.Identity.Client => 0xa351df22 => 215
	i32 2740948882, ; 475: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 476: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 477: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 346
	i32 2755643133, ; 478: Microsoft.EntityFrameworkCore.SqlServer => 0xa43fc6fd => 194
	i32 2758225723, ; 479: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 225
	i32 2764765095, ; 480: Microsoft.Maui.dll => 0xa4caf7a7 => 226
	i32 2765824710, ; 481: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 482: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 318
	i32 2778768386, ; 483: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 309
	i32 2779977773, ; 484: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 297
	i32 2785988530, ; 485: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 352
	i32 2788224221, ; 486: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 275
	i32 2795666278, ; 487: Microsoft.Win32.SystemEvents => 0xa6a27b66 => 229
	i32 2801831435, ; 488: Microsoft.Maui.Graphics => 0xa7008e0b => 228
	i32 2803228030, ; 489: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2806116107, ; 490: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 331
	i32 2810250172, ; 491: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 262
	i32 2819470561, ; 492: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 493: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 494: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 297
	i32 2824502124, ; 495: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 496: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 344
	i32 2833784645, ; 497: Microsoft.AspNetCore.Metadata => 0xa8e81f45 => 187
	i32 2838993487, ; 498: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 286
	i32 2841355853, ; 499: System.Security.Permissions => 0xa95ba64d => 240
	i32 2847789619, ; 500: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 192
	i32 2849599387, ; 501: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 502: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 309
	i32 2855708567, ; 503: Xamarin.AndroidX.Transition => 0xaa36a797 => 305
	i32 2861098320, ; 504: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 505: Microsoft.Maui.Essentials => 0xaa8a4878 => 227
	i32 2870099610, ; 506: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 247
	i32 2875164099, ; 507: Jsr305Binding.dll => 0xab5f85c3 => 314
	i32 2875220617, ; 508: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 509: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 273
	i32 2887636118, ; 510: System.Net.dll => 0xac1dd496 => 81
	i32 2892341533, ; 511: Microsoft.AspNetCore.Components.Web => 0xac65a11d => 184
	i32 2899753641, ; 512: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 513: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 514: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 515: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 516: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2911054922, ; 517: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 208
	i32 2916838712, ; 518: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 310
	i32 2919462931, ; 519: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 520: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 249
	i32 2936416060, ; 521: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 522: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 523: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2944313911, ; 524: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 235
	i32 2959614098, ; 525: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 526: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2970759306, ; 527: BCrypt.Net-Next.dll => 0xb112308a => 173
	i32 2972252294, ; 528: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 529: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 269
	i32 2987532451, ; 530: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 300
	i32 2996846495, ; 531: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 282
	i32 3012788804, ; 532: System.Configuration.ConfigurationManager => 0xb3938244 => 235
	i32 3016983068, ; 533: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 302
	i32 3023353419, ; 534: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 535: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 277
	i32 3038032645, ; 536: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 363
	i32 3056245963, ; 537: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 299
	i32 3057625584, ; 538: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 290
	i32 3059408633, ; 539: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 540: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3069363400, ; 541: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 195
	i32 3075834255, ; 542: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 543: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 337
	i32 3084678329, ; 544: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 220
	i32 3090735792, ; 545: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 546: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 547: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 548: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 549: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 550: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 551: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 552: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 553: GoogleGson.dll => 0xbba64c02 => 178
	i32 3159123045, ; 554: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 555: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3171180504, ; 556: MimeKit.dll => 0xbd045fd8 => 230
	i32 3178803400, ; 557: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 291
	i32 3192346100, ; 558: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 559: System.Web => 0xbe592c0c => 153
	i32 3195844289, ; 560: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 195
	i32 3204380047, ; 561: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 562: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 563: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 268
	i32 3213246214, ; 564: System.Security.Permissions.dll => 0xbf863f06 => 240
	i32 3220365878, ; 565: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 566: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 567: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 568: Xamarin.AndroidX.CardView => 0xc235e84d => 256
	i32 3265493905, ; 569: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 570: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 571: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 572: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 573: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 574: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 575: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 576: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 577: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 332
	i32 3312457198, ; 578: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 216
	i32 3316684772, ; 579: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 580: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 266
	i32 3317144872, ; 581: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 582: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 254
	i32 3345895724, ; 583: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 295
	i32 3346324047, ; 584: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 292
	i32 3357674450, ; 585: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 349
	i32 3358260929, ; 586: System.Text.Json => 0xc82afec1 => 137
	i32 3360279109, ; 587: SQLitePCLRaw.core => 0xc849ca45 => 232
	i32 3362336904, ; 588: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 247
	i32 3362522851, ; 589: Xamarin.AndroidX.Core => 0xc86c06e3 => 263
	i32 3366347497, ; 590: Java.Interop => 0xc8a662e9 => 168
	i32 3374879918, ; 591: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 218
	i32 3374999561, ; 592: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 296
	i32 3381016424, ; 593: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 328
	i32 3395150330, ; 594: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 595: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 596: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 267
	i32 3406629867, ; 597: Microsoft.Extensions.FileProviders.Composite.dll => 0xcb0d0beb => 206
	i32 3421170118, ; 598: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 199
	i32 3428513518, ; 599: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 202
	i32 3429136800, ; 600: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 601: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 602: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 270
	i32 3445260447, ; 603: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 604: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 223
	i32 3463511458, ; 605: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 336
	i32 3464190856, ; 606: Microsoft.AspNetCore.Components.Forms.dll => 0xce7b5b88 => 183
	i32 3471940407, ; 607: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3472012038, ; 608: BCrypt.Net-Next => 0xcef2b306 => 173
	i32 3476120550, ; 609: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 610: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 349
	i32 3484440000, ; 611: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 348
	i32 3485117614, ; 612: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 613: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 614: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 259
	i32 3500000672, ; 615: Microsoft.JSInterop => 0xd09dc5a0 => 222
	i32 3509114376, ; 616: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 617: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 618: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 619: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3545306353, ; 620: Microsoft.Data.SqlClient => 0xd35114f1 => 188
	i32 3560100363, ; 621: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 622: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 623: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 356
	i32 3597029428, ; 624: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 245
	i32 3598340787, ; 625: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3605570793, ; 626: BouncyCastle.Cryptography => 0xd6e8a4e9 => 174
	i32 3608519521, ; 627: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 628: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 629: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 294
	i32 3633644679, ; 630: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 249
	i32 3638274909, ; 631: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 632: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 280
	i32 3643446276, ; 633: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 353
	i32 3643854240, ; 634: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 291
	i32 3645089577, ; 635: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 636: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 198
	i32 3660523487, ; 637: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 638: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 639: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 255
	i32 3684561358, ; 640: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 259
	i32 3689375977, ; 641: System.Drawing.Common => 0xdbe768e9 => 236
	i32 3697841164, ; 642: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 358
	i32 3700866549, ; 643: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 644: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 264
	i32 3716563718, ; 645: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 646: Xamarin.AndroidX.Annotation => 0xdda814c6 => 248
	i32 3722202641, ; 647: Microsoft.Extensions.Configuration.Json.dll => 0xdddc4e11 => 201
	i32 3724971120, ; 648: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 290
	i32 3732100267, ; 649: System.Net.NameResolution => 0xde7354ab => 67
	i32 3732214720, ; 650: Microsoft.AspNetCore.Metadata.dll => 0xde7513c0 => 187
	i32 3737834244, ; 651: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 652: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 653: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3754567612, ; 654: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 234
	i32 3758424670, ; 655: Microsoft.Extensions.Configuration.FileExtensions => 0xe005025e => 200
	i32 3777972541, ; 656: PruebaWebNueva.Infrastructure.dll => 0xe12f493d => 362
	i32 3786282454, ; 657: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 257
	i32 3792276235, ; 658: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 659: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 223
	i32 3802395368, ; 660: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3807198597, ; 661: System.Security.Cryptography.Pkcs => 0xe2ed3d85 => 239
	i32 3819260425, ; 662: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 663: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 664: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 665: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 203
	i32 3844307129, ; 666: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 667: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 668: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 669: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 670: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 671: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 672: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 305
	i32 3888767677, ; 673: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 295
	i32 3889960447, ; 674: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 357
	i32 3896106733, ; 675: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 676: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 263
	i32 3901907137, ; 677: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 678: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 679: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 308
	i32 3928044579, ; 680: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 681: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 682: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 293
	i32 3945713374, ; 683: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 684: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 685: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 251
	i32 3959773229, ; 686: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 282
	i32 3980434154, ; 687: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 352
	i32 3987592930, ; 688: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 334
	i32 4003436829, ; 689: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 690: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 250
	i32 4023392905, ; 691: System.IO.Pipelines => 0xefd01a89 => 238
	i32 4025784931, ; 692: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 693: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 225
	i32 4054681211, ; 694: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 695: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 696: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4094352644, ; 697: Microsoft.Maui.Essentials.dll => 0xf40add04 => 227
	i32 4099507663, ; 698: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 699: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 700: Xamarin.AndroidX.Emoji2 => 0xf479582c => 271
	i32 4101842092, ; 701: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 196
	i32 4102112229, ; 702: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 347
	i32 4125707920, ; 703: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 342
	i32 4126470640, ; 704: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 202
	i32 4127667938, ; 705: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 706: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 707: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 708: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 354
	i32 4151237749, ; 709: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 710: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 711: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 712: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 713: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 714: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 287
	i32 4185676441, ; 715: System.Security => 0xf97c5a99 => 130
	i32 4194278001, ; 716: Microsoft.EntityFrameworkCore.SqlServer.dll => 0xf9ff9a71 => 194
	i32 4196529839, ; 717: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 718: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4256097574, ; 719: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 264
	i32 4258378803, ; 720: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 286
	i32 4260525087, ; 721: System.Buffers => 0xfdf2741f => 7
	i32 4263231520, ; 722: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 237
	i32 4271975918, ; 723: Microsoft.Maui.Controls.dll => 0xfea12dee => 224
	i32 4274976490, ; 724: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 725: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 287
	i32 4294648842, ; 726: Microsoft.Extensions.FileProviders.Embedded => 0xfffb240a => 207
	i32 4294763496 ; 727: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 273
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [728 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 204, ; 3
	i32 283, ; 4
	i32 317, ; 5
	i32 48, ; 6
	i32 80, ; 7
	i32 145, ; 8
	i32 229, ; 9
	i32 30, ; 10
	i32 358, ; 11
	i32 124, ; 12
	i32 228, ; 13
	i32 102, ; 14
	i32 301, ; 15
	i32 107, ; 16
	i32 301, ; 17
	i32 139, ; 18
	i32 175, ; 19
	i32 321, ; 20
	i32 77, ; 21
	i32 124, ; 22
	i32 13, ; 23
	i32 257, ; 24
	i32 132, ; 25
	i32 303, ; 26
	i32 151, ; 27
	i32 355, ; 28
	i32 356, ; 29
	i32 18, ; 30
	i32 255, ; 31
	i32 26, ; 32
	i32 277, ; 33
	i32 1, ; 34
	i32 59, ; 35
	i32 42, ; 36
	i32 182, ; 37
	i32 91, ; 38
	i32 181, ; 39
	i32 260, ; 40
	i32 147, ; 41
	i32 279, ; 42
	i32 276, ; 43
	i32 327, ; 44
	i32 54, ; 45
	i32 69, ; 46
	i32 355, ; 47
	i32 246, ; 48
	i32 83, ; 49
	i32 340, ; 50
	i32 278, ; 51
	i32 233, ; 52
	i32 339, ; 53
	i32 131, ; 54
	i32 55, ; 55
	i32 149, ; 56
	i32 74, ; 57
	i32 145, ; 58
	i32 62, ; 59
	i32 146, ; 60
	i32 363, ; 61
	i32 165, ; 62
	i32 351, ; 63
	i32 261, ; 64
	i32 12, ; 65
	i32 274, ; 66
	i32 125, ; 67
	i32 152, ; 68
	i32 113, ; 69
	i32 166, ; 70
	i32 164, ; 71
	i32 276, ; 72
	i32 289, ; 73
	i32 84, ; 74
	i32 338, ; 75
	i32 332, ; 76
	i32 214, ; 77
	i32 150, ; 78
	i32 321, ; 79
	i32 60, ; 80
	i32 210, ; 81
	i32 51, ; 82
	i32 103, ; 83
	i32 114, ; 84
	i32 40, ; 85
	i32 360, ; 86
	i32 314, ; 87
	i32 312, ; 88
	i32 207, ; 89
	i32 120, ; 90
	i32 230, ; 91
	i32 346, ; 92
	i32 52, ; 93
	i32 44, ; 94
	i32 119, ; 95
	i32 266, ; 96
	i32 344, ; 97
	i32 272, ; 98
	i32 81, ; 99
	i32 136, ; 100
	i32 308, ; 101
	i32 253, ; 102
	i32 8, ; 103
	i32 73, ; 104
	i32 326, ; 105
	i32 155, ; 106
	i32 323, ; 107
	i32 154, ; 108
	i32 92, ; 109
	i32 318, ; 110
	i32 45, ; 111
	i32 341, ; 112
	i32 239, ; 113
	i32 329, ; 114
	i32 322, ; 115
	i32 109, ; 116
	i32 129, ; 117
	i32 231, ; 118
	i32 25, ; 119
	i32 243, ; 120
	i32 72, ; 121
	i32 55, ; 122
	i32 46, ; 123
	i32 350, ; 124
	i32 359, ; 125
	i32 213, ; 126
	i32 267, ; 127
	i32 176, ; 128
	i32 186, ; 129
	i32 22, ; 130
	i32 281, ; 131
	i32 236, ; 132
	i32 86, ; 133
	i32 43, ; 134
	i32 160, ; 135
	i32 71, ; 136
	i32 294, ; 137
	i32 3, ; 138
	i32 42, ; 139
	i32 63, ; 140
	i32 16, ; 141
	i32 53, ; 142
	i32 353, ; 143
	i32 317, ; 144
	i32 105, ; 145
	i32 322, ; 146
	i32 315, ; 147
	i32 278, ; 148
	i32 34, ; 149
	i32 158, ; 150
	i32 85, ; 151
	i32 32, ; 152
	i32 12, ; 153
	i32 51, ; 154
	i32 209, ; 155
	i32 56, ; 156
	i32 298, ; 157
	i32 36, ; 158
	i32 203, ; 159
	i32 328, ; 160
	i32 316, ; 161
	i32 251, ; 162
	i32 35, ; 163
	i32 58, ; 164
	i32 285, ; 165
	i32 178, ; 166
	i32 17, ; 167
	i32 319, ; 168
	i32 164, ; 169
	i32 200, ; 170
	i32 0, ; 171
	i32 341, ; 172
	i32 284, ; 173
	i32 212, ; 174
	i32 188, ; 175
	i32 241, ; 176
	i32 311, ; 177
	i32 191, ; 178
	i32 347, ; 179
	i32 153, ; 180
	i32 205, ; 181
	i32 307, ; 182
	i32 292, ; 183
	i32 191, ; 184
	i32 345, ; 185
	i32 253, ; 186
	i32 196, ; 187
	i32 29, ; 188
	i32 52, ; 189
	i32 343, ; 190
	i32 312, ; 191
	i32 5, ; 192
	i32 327, ; 193
	i32 302, ; 194
	i32 306, ; 195
	i32 258, ; 196
	i32 323, ; 197
	i32 250, ; 198
	i32 232, ; 199
	i32 269, ; 200
	i32 85, ; 201
	i32 311, ; 202
	i32 0, ; 203
	i32 61, ; 204
	i32 112, ; 205
	i32 57, ; 206
	i32 357, ; 207
	i32 298, ; 208
	i32 99, ; 209
	i32 19, ; 210
	i32 262, ; 211
	i32 111, ; 212
	i32 101, ; 213
	i32 102, ; 214
	i32 325, ; 215
	i32 104, ; 216
	i32 315, ; 217
	i32 71, ; 218
	i32 38, ; 219
	i32 32, ; 220
	i32 206, ; 221
	i32 103, ; 222
	i32 73, ; 223
	i32 237, ; 224
	i32 331, ; 225
	i32 9, ; 226
	i32 123, ; 227
	i32 46, ; 228
	i32 252, ; 229
	i32 214, ; 230
	i32 175, ; 231
	i32 9, ; 232
	i32 43, ; 233
	i32 4, ; 234
	i32 299, ; 235
	i32 189, ; 236
	i32 335, ; 237
	i32 216, ; 238
	i32 330, ; 239
	i32 209, ; 240
	i32 31, ; 241
	i32 138, ; 242
	i32 92, ; 243
	i32 186, ; 244
	i32 93, ; 245
	i32 350, ; 246
	i32 221, ; 247
	i32 49, ; 248
	i32 141, ; 249
	i32 112, ; 250
	i32 140, ; 251
	i32 268, ; 252
	i32 115, ; 253
	i32 316, ; 254
	i32 157, ; 255
	i32 76, ; 256
	i32 79, ; 257
	i32 288, ; 258
	i32 37, ; 259
	i32 310, ; 260
	i32 219, ; 261
	i32 177, ; 262
	i32 201, ; 263
	i32 272, ; 264
	i32 265, ; 265
	i32 64, ; 266
	i32 138, ; 267
	i32 15, ; 268
	i32 185, ; 269
	i32 116, ; 270
	i32 304, ; 271
	i32 313, ; 272
	i32 260, ; 273
	i32 48, ; 274
	i32 70, ; 275
	i32 80, ; 276
	i32 126, ; 277
	i32 189, ; 278
	i32 190, ; 279
	i32 94, ; 280
	i32 121, ; 281
	i32 320, ; 282
	i32 26, ; 283
	i32 233, ; 284
	i32 281, ; 285
	i32 97, ; 286
	i32 28, ; 287
	i32 256, ; 288
	i32 179, ; 289
	i32 348, ; 290
	i32 326, ; 291
	i32 149, ; 292
	i32 238, ; 293
	i32 169, ; 294
	i32 4, ; 295
	i32 98, ; 296
	i32 184, ; 297
	i32 33, ; 298
	i32 93, ; 299
	i32 303, ; 300
	i32 210, ; 301
	i32 21, ; 302
	i32 41, ; 303
	i32 170, ; 304
	i32 342, ; 305
	i32 274, ; 306
	i32 334, ; 307
	i32 215, ; 308
	i32 288, ; 309
	i32 319, ; 310
	i32 313, ; 311
	i32 293, ; 312
	i32 2, ; 313
	i32 134, ; 314
	i32 111, ; 315
	i32 211, ; 316
	i32 241, ; 317
	i32 360, ; 318
	i32 354, ; 319
	i32 243, ; 320
	i32 351, ; 321
	i32 58, ; 322
	i32 95, ; 323
	i32 219, ; 324
	i32 333, ; 325
	i32 39, ; 326
	i32 254, ; 327
	i32 193, ; 328
	i32 25, ; 329
	i32 94, ; 330
	i32 89, ; 331
	i32 99, ; 332
	i32 10, ; 333
	i32 87, ; 334
	i32 100, ; 335
	i32 300, ; 336
	i32 197, ; 337
	i32 320, ; 338
	i32 245, ; 339
	i32 220, ; 340
	i32 330, ; 341
	i32 7, ; 342
	i32 193, ; 343
	i32 285, ; 344
	i32 325, ; 345
	i32 179, ; 346
	i32 242, ; 347
	i32 88, ; 348
	i32 199, ; 349
	i32 280, ; 350
	i32 154, ; 351
	i32 329, ; 352
	i32 33, ; 353
	i32 208, ; 354
	i32 116, ; 355
	i32 82, ; 356
	i32 234, ; 357
	i32 359, ; 358
	i32 20, ; 359
	i32 11, ; 360
	i32 221, ; 361
	i32 162, ; 362
	i32 3, ; 363
	i32 226, ; 364
	i32 337, ; 365
	i32 213, ; 366
	i32 211, ; 367
	i32 182, ; 368
	i32 84, ; 369
	i32 204, ; 370
	i32 324, ; 371
	i32 64, ; 372
	i32 339, ; 373
	i32 307, ; 374
	i32 143, ; 375
	i32 289, ; 376
	i32 157, ; 377
	i32 190, ; 378
	i32 218, ; 379
	i32 41, ; 380
	i32 117, ; 381
	i32 198, ; 382
	i32 244, ; 383
	i32 333, ; 384
	i32 296, ; 385
	i32 131, ; 386
	i32 75, ; 387
	i32 66, ; 388
	i32 177, ; 389
	i32 343, ; 390
	i32 172, ; 391
	i32 248, ; 392
	i32 143, ; 393
	i32 106, ; 394
	i32 151, ; 395
	i32 70, ; 396
	i32 156, ; 397
	i32 217, ; 398
	i32 197, ; 399
	i32 121, ; 400
	i32 127, ; 401
	i32 338, ; 402
	i32 152, ; 403
	i32 271, ; 404
	i32 181, ; 405
	i32 141, ; 406
	i32 258, ; 407
	i32 335, ; 408
	i32 20, ; 409
	i32 14, ; 410
	i32 222, ; 411
	i32 135, ; 412
	i32 75, ; 413
	i32 59, ; 414
	i32 231, ; 415
	i32 261, ; 416
	i32 167, ; 417
	i32 168, ; 418
	i32 224, ; 419
	i32 15, ; 420
	i32 74, ; 421
	i32 361, ; 422
	i32 6, ; 423
	i32 174, ; 424
	i32 23, ; 425
	i32 283, ; 426
	i32 362, ; 427
	i32 242, ; 428
	i32 180, ; 429
	i32 91, ; 430
	i32 176, ; 431
	i32 336, ; 432
	i32 1, ; 433
	i32 136, ; 434
	i32 284, ; 435
	i32 306, ; 436
	i32 134, ; 437
	i32 69, ; 438
	i32 183, ; 439
	i32 146, ; 440
	i32 205, ; 441
	i32 345, ; 442
	i32 361, ; 443
	i32 324, ; 444
	i32 275, ; 445
	i32 212, ; 446
	i32 88, ; 447
	i32 96, ; 448
	i32 265, ; 449
	i32 270, ; 450
	i32 340, ; 451
	i32 31, ; 452
	i32 45, ; 453
	i32 279, ; 454
	i32 192, ; 455
	i32 217, ; 456
	i32 244, ; 457
	i32 109, ; 458
	i32 158, ; 459
	i32 35, ; 460
	i32 22, ; 461
	i32 114, ; 462
	i32 185, ; 463
	i32 57, ; 464
	i32 304, ; 465
	i32 144, ; 466
	i32 118, ; 467
	i32 120, ; 468
	i32 110, ; 469
	i32 246, ; 470
	i32 139, ; 471
	i32 180, ; 472
	i32 252, ; 473
	i32 215, ; 474
	i32 54, ; 475
	i32 105, ; 476
	i32 346, ; 477
	i32 194, ; 478
	i32 225, ; 479
	i32 226, ; 480
	i32 133, ; 481
	i32 318, ; 482
	i32 309, ; 483
	i32 297, ; 484
	i32 352, ; 485
	i32 275, ; 486
	i32 229, ; 487
	i32 228, ; 488
	i32 159, ; 489
	i32 331, ; 490
	i32 262, ; 491
	i32 163, ; 492
	i32 132, ; 493
	i32 297, ; 494
	i32 161, ; 495
	i32 344, ; 496
	i32 187, ; 497
	i32 286, ; 498
	i32 240, ; 499
	i32 192, ; 500
	i32 140, ; 501
	i32 309, ; 502
	i32 305, ; 503
	i32 169, ; 504
	i32 227, ; 505
	i32 247, ; 506
	i32 314, ; 507
	i32 40, ; 508
	i32 273, ; 509
	i32 81, ; 510
	i32 184, ; 511
	i32 56, ; 512
	i32 37, ; 513
	i32 97, ; 514
	i32 166, ; 515
	i32 172, ; 516
	i32 208, ; 517
	i32 310, ; 518
	i32 82, ; 519
	i32 249, ; 520
	i32 98, ; 521
	i32 30, ; 522
	i32 159, ; 523
	i32 235, ; 524
	i32 18, ; 525
	i32 127, ; 526
	i32 173, ; 527
	i32 119, ; 528
	i32 269, ; 529
	i32 300, ; 530
	i32 282, ; 531
	i32 235, ; 532
	i32 302, ; 533
	i32 165, ; 534
	i32 277, ; 535
	i32 363, ; 536
	i32 299, ; 537
	i32 290, ; 538
	i32 170, ; 539
	i32 16, ; 540
	i32 195, ; 541
	i32 144, ; 542
	i32 337, ; 543
	i32 220, ; 544
	i32 125, ; 545
	i32 118, ; 546
	i32 38, ; 547
	i32 115, ; 548
	i32 47, ; 549
	i32 142, ; 550
	i32 117, ; 551
	i32 34, ; 552
	i32 178, ; 553
	i32 95, ; 554
	i32 53, ; 555
	i32 230, ; 556
	i32 291, ; 557
	i32 129, ; 558
	i32 153, ; 559
	i32 195, ; 560
	i32 24, ; 561
	i32 161, ; 562
	i32 268, ; 563
	i32 240, ; 564
	i32 148, ; 565
	i32 104, ; 566
	i32 89, ; 567
	i32 256, ; 568
	i32 60, ; 569
	i32 142, ; 570
	i32 100, ; 571
	i32 5, ; 572
	i32 13, ; 573
	i32 122, ; 574
	i32 135, ; 575
	i32 28, ; 576
	i32 332, ; 577
	i32 216, ; 578
	i32 72, ; 579
	i32 266, ; 580
	i32 24, ; 581
	i32 254, ; 582
	i32 295, ; 583
	i32 292, ; 584
	i32 349, ; 585
	i32 137, ; 586
	i32 232, ; 587
	i32 247, ; 588
	i32 263, ; 589
	i32 168, ; 590
	i32 218, ; 591
	i32 296, ; 592
	i32 328, ; 593
	i32 101, ; 594
	i32 123, ; 595
	i32 267, ; 596
	i32 206, ; 597
	i32 199, ; 598
	i32 202, ; 599
	i32 163, ; 600
	i32 167, ; 601
	i32 270, ; 602
	i32 39, ; 603
	i32 223, ; 604
	i32 336, ; 605
	i32 183, ; 606
	i32 17, ; 607
	i32 173, ; 608
	i32 171, ; 609
	i32 349, ; 610
	i32 348, ; 611
	i32 137, ; 612
	i32 150, ; 613
	i32 259, ; 614
	i32 222, ; 615
	i32 155, ; 616
	i32 130, ; 617
	i32 19, ; 618
	i32 65, ; 619
	i32 188, ; 620
	i32 147, ; 621
	i32 47, ; 622
	i32 356, ; 623
	i32 245, ; 624
	i32 79, ; 625
	i32 174, ; 626
	i32 61, ; 627
	i32 106, ; 628
	i32 294, ; 629
	i32 249, ; 630
	i32 49, ; 631
	i32 280, ; 632
	i32 353, ; 633
	i32 291, ; 634
	i32 14, ; 635
	i32 198, ; 636
	i32 68, ; 637
	i32 171, ; 638
	i32 255, ; 639
	i32 259, ; 640
	i32 236, ; 641
	i32 358, ; 642
	i32 78, ; 643
	i32 264, ; 644
	i32 108, ; 645
	i32 248, ; 646
	i32 201, ; 647
	i32 290, ; 648
	i32 67, ; 649
	i32 187, ; 650
	i32 63, ; 651
	i32 27, ; 652
	i32 160, ; 653
	i32 234, ; 654
	i32 200, ; 655
	i32 362, ; 656
	i32 257, ; 657
	i32 10, ; 658
	i32 223, ; 659
	i32 11, ; 660
	i32 239, ; 661
	i32 78, ; 662
	i32 126, ; 663
	i32 83, ; 664
	i32 203, ; 665
	i32 66, ; 666
	i32 107, ; 667
	i32 65, ; 668
	i32 128, ; 669
	i32 122, ; 670
	i32 77, ; 671
	i32 305, ; 672
	i32 295, ; 673
	i32 357, ; 674
	i32 8, ; 675
	i32 263, ; 676
	i32 2, ; 677
	i32 44, ; 678
	i32 308, ; 679
	i32 156, ; 680
	i32 128, ; 681
	i32 293, ; 682
	i32 23, ; 683
	i32 133, ; 684
	i32 251, ; 685
	i32 282, ; 686
	i32 352, ; 687
	i32 334, ; 688
	i32 29, ; 689
	i32 250, ; 690
	i32 238, ; 691
	i32 62, ; 692
	i32 225, ; 693
	i32 90, ; 694
	i32 87, ; 695
	i32 148, ; 696
	i32 227, ; 697
	i32 36, ; 698
	i32 86, ; 699
	i32 271, ; 700
	i32 196, ; 701
	i32 347, ; 702
	i32 342, ; 703
	i32 202, ; 704
	i32 50, ; 705
	i32 6, ; 706
	i32 90, ; 707
	i32 354, ; 708
	i32 21, ; 709
	i32 162, ; 710
	i32 96, ; 711
	i32 50, ; 712
	i32 113, ; 713
	i32 287, ; 714
	i32 130, ; 715
	i32 194, ; 716
	i32 76, ; 717
	i32 27, ; 718
	i32 264, ; 719
	i32 286, ; 720
	i32 7, ; 721
	i32 237, ; 722
	i32 224, ; 723
	i32 110, ; 724
	i32 287, ; 725
	i32 207, ; 726
	i32 273 ; 727
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ 82d8938cf80f6d5fa6c28529ddfbdb753d805ab4"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
