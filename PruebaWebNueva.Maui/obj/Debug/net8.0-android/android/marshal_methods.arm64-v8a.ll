; ModuleID = 'marshal_methods.arm64-v8a.ll'
source_filename = "marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [367 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [728 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 270
	i64 98382396393917666, ; 1: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 214
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 171
	i64 131669012237370309, ; 3: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 227
	i64 196720943101637631, ; 4: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 58
	i64 210515253464952879, ; 5: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 257
	i64 229794953483747371, ; 6: System.ValueTuple.dll => 0x330654aed93802b => 151
	i64 232391251801502327, ; 7: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 298
	i64 295915112840604065, ; 8: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 301
	i64 316157742385208084, ; 9: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 264
	i64 350667413455104241, ; 10: System.ServiceProcess.dll => 0x4ddd227954be8f1 => 132
	i64 422779754995088667, ; 11: System.IO.UnmanagedMemoryStream => 0x5de03f27ab57d1b => 56
	i64 435118502366263740, ; 12: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x609d9f8f8bdb9bc => 300
	i64 545109961164950392, ; 13: fi/Microsoft.Maui.Controls.resources.dll => 0x7909e9f1ec38b78 => 332
	i64 560278790331054453, ; 14: System.Reflection.Primitives => 0x7c6829760de3975 => 95
	i64 634308326490598313, ; 15: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 283
	i64 648449422406355874, ; 16: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x8ffc15065568ba2 => 200
	i64 649145001856603771, ; 17: System.Security.SecureString => 0x90239f09b62167b => 129
	i64 668723562677762733, ; 18: Microsoft.Extensions.Configuration.Binder.dll => 0x947c88986577aad => 199
	i64 670564002081277297, ; 19: Microsoft.Identity.Client.dll => 0x94e526837380571 => 215
	i64 683390398661839228, ; 20: Microsoft.Extensions.FileProviders.Embedded => 0x97be3f26326c97c => 207
	i64 702024105029695270, ; 21: System.Drawing.Common => 0x9be17343c0e7726 => 236
	i64 750875890346172408, ; 22: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 145
	i64 798450721097591769, ; 23: Xamarin.AndroidX.Collection.Ktx.dll => 0xb14aab351ad2bd9 => 258
	i64 799765834175365804, ; 24: System.ComponentModel.dll => 0xb1956c9f18442ac => 18
	i64 849051935479314978, ; 25: hi/Microsoft.Maui.Controls.resources.dll => 0xbc8703ca21a3a22 => 335
	i64 870603111519317375, ; 26: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 233
	i64 872800313462103108, ; 27: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 269
	i64 895210737996778430, ; 28: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0xc6c6d6c5569cbbe => 284
	i64 940822596282819491, ; 29: System.Transactions => 0xd0e792aa81923a3 => 150
	i64 960778385402502048, ; 30: System.Runtime.Handles.dll => 0xd555ed9e1ca1ba0 => 104
	i64 1010599046655515943, ; 31: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 95
	i64 1120440138749646132, ; 32: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 313
	i64 1121665720830085036, ; 33: nb/Microsoft.Maui.Controls.resources.dll => 0xf90f507becf47ac => 343
	i64 1254565857766189994, ; 34: PruebaWebNueva.Domain.dll => 0x11691d002b7cabaa => 361
	i64 1268860745194512059, ; 35: System.Drawing.dll => 0x119be62002c19ebb => 36
	i64 1278906455852160409, ; 36: Microsoft.EntityFrameworkCore.SqlServer.dll => 0x11bf96a54a059599 => 194
	i64 1301485588176585670, ; 37: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 232
	i64 1301626418029409250, ; 38: System.Diagnostics.FileVersionInfo => 0x12104e54b4e833e2 => 28
	i64 1315114680217950157, ; 39: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 253
	i64 1369545283391376210, ; 40: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 291
	i64 1404195534211153682, ; 41: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 50
	i64 1425944114962822056, ; 42: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 115
	i64 1476839205573959279, ; 43: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 70
	i64 1486715745332614827, ; 44: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 224
	i64 1492954217099365037, ; 45: System.Net.HttpListener => 0x14b809f350210aad => 65
	i64 1513467482682125403, ; 46: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 170
	i64 1518315023656898250, ; 47: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 234
	i64 1537168428375924959, ; 48: System.Threading.Thread.dll => 0x15551e8a954ae0df => 145
	i64 1556147632182429976, ; 49: ko/Microsoft.Maui.Controls.resources.dll => 0x15988c06d24c8918 => 341
	i64 1559087064654078745, ; 50: BCrypt.Net-Next.dll => 0x15a2fd6cc69ce319 => 173
	i64 1576750169145655260, ; 51: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x15e1bdecc376bfdc => 312
	i64 1624659445732251991, ; 52: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 252
	i64 1628611045998245443, ; 53: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 287
	i64 1636321030536304333, ; 54: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 277
	i64 1651782184287836205, ; 55: System.Globalization.Calendars => 0x16ec4f2524cb982d => 40
	i64 1659332977923810219, ; 56: System.Reflection.DispatchProxy => 0x1707228d493d63ab => 89
	i64 1672383392659050004, ; 57: Microsoft.Data.Sqlite.dll => 0x17357fd5bfb48e14 => 189
	i64 1682513316613008342, ; 58: System.Net.dll => 0x17597cf276952bd6 => 81
	i64 1735388228521408345, ; 59: System.Net.Mail.dll => 0x181556663c69b759 => 66
	i64 1743969030606105336, ; 60: System.Memory.dll => 0x1833d297e88f2af8 => 62
	i64 1767386781656293639, ; 61: System.Private.Uri.dll => 0x188704e9f5582107 => 86
	i64 1776954265264967804, ; 62: Microsoft.JSInterop.dll => 0x18a9027d533bd07c => 222
	i64 1795316252682057001, ; 63: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 251
	i64 1825687700144851180, ; 64: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 106
	i64 1835311033149317475, ; 65: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 331
	i64 1836611346387731153, ; 66: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 298
	i64 1854145951182283680, ; 67: System.Runtime.CompilerServices.VisualC => 0x19bb3feb3df2e3a0 => 102
	i64 1875417405349196092, ; 68: System.Drawing.Primitives => 0x1a06d2319b6c713c => 35
	i64 1875917498431009007, ; 69: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 248
	i64 1881198190668717030, ; 70: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 353
	i64 1897575647115118287, ; 71: Xamarin.AndroidX.Security.SecurityCrypto => 0x1a558aff4cba86cf => 300
	i64 1920760634179481754, ; 72: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 225
	i64 1959996714666907089, ; 73: tr/Microsoft.Maui.Controls.resources.dll => 0x1b334ea0a2a755d1 => 353
	i64 1963507636676687784, ; 74: MimeKit => 0x1b3fc7cadde177a8 => 230
	i64 1972385128188460614, ; 75: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 119
	i64 1981742497975770890, ; 76: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 285
	i64 1983698669889758782, ; 77: cs/Microsoft.Maui.Controls.resources.dll => 0x1b87836e2031a63e => 327
	i64 2019660174692588140, ; 78: pl/Microsoft.Maui.Controls.resources.dll => 0x1c07463a6f8e1a6c => 345
	i64 2040001226662520565, ; 79: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 142
	i64 2062890601515140263, ; 80: System.Threading.Tasks.Dataflow => 0x1ca0dc1289cd44a7 => 141
	i64 2064708342624596306, ; 81: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 321
	i64 2080945842184875448, ; 82: System.IO.MemoryMappedFiles => 0x1ce10137d8416db8 => 53
	i64 2102659300918482391, ; 83: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 35
	i64 2106033277907880740, ; 84: System.Threading.Tasks.Dataflow.dll => 0x1d3a221ba6d9cb24 => 141
	i64 2165310824878145998, ; 85: Xamarin.Android.Glide.GifDecoder => 0x1e0cbab9112b81ce => 245
	i64 2165725771938924357, ; 86: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 255
	i64 2192948757939169934, ; 87: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x1e6eeb46cf992a8e => 191
	i64 2200176636225660136, ; 88: Microsoft.Extensions.Logging.Debug.dll => 0x1e8898fe5d5824e8 => 212
	i64 2262844636196693701, ; 89: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 269
	i64 2287834202362508563, ; 90: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 8
	i64 2287887973817120656, ; 91: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 14
	i64 2295368378960711535, ; 92: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x1fdac961189e0f6f => 186
	i64 2302323944321350744, ; 93: ru/Microsoft.Maui.Controls.resources.dll => 0x1ff37f6ddb267c58 => 349
	i64 2304837677853103545, ; 94: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 297
	i64 2315304989185124968, ; 95: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 51
	i64 2316229908869312383, ; 96: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x2024e6d4884a6f7f => 219
	i64 2329709569556905518, ; 97: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 280
	i64 2335503487726329082, ; 98: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 136
	i64 2337758774805907496, ; 99: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 101
	i64 2470498323731680442, ; 100: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 262
	i64 2479423007379663237, ; 101: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 307
	i64 2497223385847772520, ; 102: System.Runtime => 0x22a7eb7046413568 => 116
	i64 2547086958574651984, ; 103: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 246
	i64 2592350477072141967, ; 104: System.Xml.dll => 0x23f9e10627330e8f => 163
	i64 2602673633151553063, ; 105: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 352
	i64 2612152650457191105, ; 106: Microsoft.IdentityModel.Tokens.dll => 0x24403afeed9892c1 => 220
	i64 2624866290265602282, ; 107: mscorlib.dll => 0x246d65fbde2db8ea => 166
	i64 2632269733008246987, ; 108: System.Net.NameResolution => 0x2487b36034f808cb => 67
	i64 2656907746661064104, ; 109: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 202
	i64 2662981627730767622, ; 110: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 327
	i64 2706075432581334785, ; 111: System.Net.WebSockets => 0x258de944be6c0701 => 80
	i64 2745381263179111323, ; 112: EPPlus.dll => 0x26198db694cddb9b => 175
	i64 2777234600790290333, ; 113: EPPlus.Interfaces => 0x268ab827ae076f9d => 176
	i64 2781169761569919449, ; 114: Microsoft.JSInterop => 0x2698b329b26ed1d9 => 222
	i64 2783046991838674048, ; 115: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 101
	i64 2787234703088983483, ; 116: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 302
	i64 2789714023057451704, ; 117: Microsoft.IdentityModel.JsonWebTokens.dll => 0x26b70e1f9943eab8 => 216
	i64 2815524396660695947, ; 118: System.Security.AccessControl => 0x2712c0857f68238b => 117
	i64 2851879596360956261, ; 119: System.Configuration.ConfigurationManager => 0x2793e9620b477965 => 235
	i64 2895129759130297543, ; 120: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 332
	i64 2923871038697555247, ; 121: Jsr305Binding => 0x2893ad37e69ec52f => 314
	i64 3017136373564924869, ; 122: System.Net.WebProxy => 0x29df058bd93f63c5 => 78
	i64 3017704767998173186, ; 123: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 313
	i64 3106852385031680087, ; 124: System.Runtime.Serialization.Xml => 0x2b1dc1c88b637057 => 114
	i64 3110390492489056344, ; 125: System.Security.Cryptography.Csp.dll => 0x2b2a53ac61900058 => 121
	i64 3135773902340015556, ; 126: System.IO.FileSystem.DriveInfo.dll => 0x2b8481c008eac5c4 => 48
	i64 3238539556702659506, ; 127: Microsoft.Win32.SystemEvents.dll => 0x2cf19a917c5023b2 => 229
	i64 3266690593535380875, ; 128: Microsoft.AspNetCore.Authorization => 0x2d559dc982c94d8b => 180
	i64 3281594302220646930, ; 129: System.Security.Principal => 0x2d8a90a198ceba12 => 128
	i64 3289520064315143713, ; 130: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 278
	i64 3303437397778967116, ; 131: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 249
	i64 3311221304742556517, ; 132: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 82
	i64 3325875462027654285, ; 133: System.Runtime.Numerics => 0x2e27e21c8958b48d => 110
	i64 3328853167529574890, ; 134: System.Net.Sockets.dll => 0x2e327651a008c1ea => 75
	i64 3344514922410554693, ; 135: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 324
	i64 3396143930648122816, ; 136: Microsoft.Extensions.FileProviders.Abstractions => 0x2f2186e9506155c0 => 205
	i64 3402534845034375023, ; 137: System.IdentityModel.Tokens.Jwt.dll => 0x2f383b6a0629a76f => 237
	i64 3429672777697402584, ; 138: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 227
	i64 3437845325506641314, ; 139: System.IO.MemoryMappedFiles.dll => 0x2fb5ae1beb8f7da2 => 53
	i64 3493805808809882663, ; 140: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 304
	i64 3494946837667399002, ; 141: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 197
	i64 3508450208084372758, ; 142: System.Net.Ping => 0x30b084e02d03ad16 => 69
	i64 3517248097768670975, ; 143: PruebaWebNueva.Infrastructure.dll => 0x30cfc6827e6b86ff => 362
	i64 3522470458906976663, ; 144: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 303
	i64 3523004241079211829, ; 145: Microsoft.Extensions.Caching.Memory.dll => 0x30e439b10bb89735 => 196
	i64 3531994851595924923, ; 146: System.Numerics => 0x31042a9aade235bb => 83
	i64 3551103847008531295, ; 147: System.Private.CoreLib.dll => 0x31480e226177735f => 172
	i64 3567343442040498961, ; 148: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 347
	i64 3571415421602489686, ; 149: System.Runtime.dll => 0x319037675df7e556 => 116
	i64 3638003163729360188, ; 150: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 198
	i64 3647754201059316852, ; 151: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 156
	i64 3655542548057982301, ; 152: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 197
	i64 3659371656528649588, ; 153: Xamarin.Android.Glide.Annotations => 0x32c8b3222885dd74 => 243
	i64 3716579019761409177, ; 154: netstandard.dll => 0x3393f0ed5c8c5c99 => 167
	i64 3727469159507183293, ; 155: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 296
	i64 3753897248517198740, ; 156: Microsoft.AspNetCore.Components.WebView.dll => 0x341885a8952f1394 => 185
	i64 3772598417116884899, ; 157: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 270
	i64 3794322307918838949, ; 158: Microsoft.AspNetCore.Metadata.dll => 0x34a824092ed7bca5 => 187
	i64 3869221888984012293, ; 159: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 210
	i64 3869649043256705283, ; 160: System.Diagnostics.Tools => 0x35b3c14d74bf0103 => 32
	i64 3889433610606858880, ; 161: Microsoft.Extensions.FileProviders.Physical.dll => 0x35fa0b4301afd280 => 208
	i64 3890352374528606784, ; 162: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 225
	i64 3919223565570527920, ; 163: System.Security.Cryptography.Encoding => 0x3663e111652bd2b0 => 122
	i64 3933965368022646939, ; 164: System.Net.Requests => 0x369840a8bfadc09b => 72
	i64 3966267475168208030, ; 165: System.Memory => 0x370b03412596249e => 62
	i64 4006972109285359177, ; 166: System.Xml.XmlDocument => 0x379b9fe74ed9fe49 => 161
	i64 4009997192427317104, ; 167: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 113
	i64 4073500526318903918, ; 168: System.Private.Xml.dll => 0x3887fb25779ae26e => 88
	i64 4073631083018132676, ; 169: Microsoft.Maui.Controls.Compatibility.dll => 0x388871e311491cc4 => 223
	i64 4120493066591692148, ; 170: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 358
	i64 4148881117810174540, ; 171: System.Runtime.InteropServices.JavaScript.dll => 0x3993c9651a66aa4c => 105
	i64 4154383907710350974, ; 172: System.ComponentModel => 0x39a7562737acb67e => 18
	i64 4167269041631776580, ; 173: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 146
	i64 4168469861834746866, ; 174: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 118
	i64 4187479170553454871, ; 175: System.Linq.Expressions => 0x3a1cea1e912fa117 => 58
	i64 4201423742386704971, ; 176: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 264
	i64 4205801962323029395, ; 177: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 17
	i64 4235503420553921860, ; 178: System.IO.IsolatedStorage.dll => 0x3ac787eb9b118544 => 52
	i64 4282138915307457788, ; 179: System.Reflection.Emit => 0x3b6d36a7ddc70cfc => 92
	i64 4337444564132831293, ; 180: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 231
	i64 4356591372459378815, ; 181: vi/Microsoft.Maui.Controls.resources.dll => 0x3c75b8c562f9087f => 355
	i64 4373617458794931033, ; 182: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 55
	i64 4384840217421645357, ; 183: Microsoft.AspNetCore.Components.Forms => 0x3cda14f22443862d => 183
	i64 4397634830160618470, ; 184: System.Security.SecureString.dll => 0x3d0789940f9be3e6 => 129
	i64 4477672992252076438, ; 185: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 152
	i64 4484706122338676047, ; 186: System.Globalization.Extensions.dll => 0x3e3ce07510042d4f => 41
	i64 4513320955448359355, ; 187: Microsoft.EntityFrameworkCore.Relational => 0x3ea2897f12d379bb => 192
	i64 4533124835995628778, ; 188: System.Reflection.Emit.dll => 0x3ee8e505540534ea => 92
	i64 4612482779465751747, ; 189: Microsoft.EntityFrameworkCore.Abstractions => 0x4002d4a662a99cc3 => 191
	i64 4636684751163556186, ; 190: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 308
	i64 4672453897036726049, ; 191: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 50
	i64 4679594760078841447, ; 192: ar/Microsoft.Maui.Controls.resources.dll => 0x40f142a407475667 => 325
	i64 4709525666540720815, ; 193: PruebaWebNueva.Client.SharedUI => 0x415b98a43ebe92af => 360
	i64 4716677666592453464, ; 194: System.Xml.XmlSerializer => 0x417501590542f358 => 162
	i64 4743821336939966868, ; 195: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 13
	i64 4759461199762736555, ; 196: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 282
	i64 4794310189461587505, ; 197: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 246
	i64 4795410492532947900, ; 198: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 303
	i64 4809057822547766521, ; 199: System.Drawing => 0x42bd349c3145ecf9 => 36
	i64 4814660307502931973, ; 200: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 67
	i64 4853321196694829351, ; 201: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 109
	i64 4915198916717725611, ; 202: PruebaWebNueva.Application.dll => 0x44364b5f775847ab => 359
	i64 5014168212289623660, ; 203: PruebaWebNueva.Maui => 0x4595e76c4194166c => 0
	i64 5055365687667823624, ; 204: Xamarin.AndroidX.Activity.Ktx.dll => 0x4628444ef7239408 => 247
	i64 5081566143765835342, ; 205: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 99
	i64 5099468265966638712, ; 206: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 99
	i64 5103417709280584325, ; 207: System.Collections.Specialized => 0x46d2fb5e161b6285 => 11
	i64 5129462924058778861, ; 208: Microsoft.Data.Sqlite => 0x472f835a350f5ced => 189
	i64 5182934613077526976, ; 209: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 11
	i64 5197073077358930460, ; 210: Microsoft.AspNetCore.Components.Web.dll => 0x481fb66db7b9aa1c => 184
	i64 5205316157927637098, ; 211: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 289
	i64 5242610084517367301, ; 212: PruebaWebNueva.Maui.dll => 0x48c17e186789ce05 => 0
	i64 5244375036463807528, ; 213: System.Diagnostics.Contracts.dll => 0x48c7c34f4d59fc28 => 25
	i64 5262971552273843408, ; 214: System.Security.Principal.dll => 0x4909d4be0c44c4d0 => 128
	i64 5278787618751394462, ; 215: System.Net.WebClient.dll => 0x4942055efc68329e => 76
	i64 5280980186044710147, ; 216: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x4949cf7fd7123d03 => 281
	i64 5290786973231294105, ; 217: System.Runtime.Loader => 0x496ca6b869b72699 => 109
	i64 5376510917114486089, ; 218: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 307
	i64 5382384903084550500, ; 219: MailKit.dll => 0x4ab2128d60c7a964 => 179
	i64 5408338804355907810, ; 220: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 305
	i64 5423376490970181369, ; 221: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 106
	i64 5440320908473006344, ; 222: Microsoft.VisualBasic.Core => 0x4b7fe70acda9f908 => 2
	i64 5446034149219586269, ; 223: System.Diagnostics.Debug => 0x4b94333452e150dd => 26
	i64 5451019430259338467, ; 224: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 260
	i64 5457765010617926378, ; 225: System.Xml.Serialization => 0x4bbde05c557002ea => 157
	i64 5471532531798518949, ; 226: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 351
	i64 5488847537322884930, ; 227: System.Windows.Extensions => 0x4c2c4dc108687f42 => 241
	i64 5507995362134886206, ; 228: System.Core.dll => 0x4c705499688c873e => 21
	i64 5522859530602327440, ; 229: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 354
	i64 5527431512186326818, ; 230: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 49
	i64 5570799893513421663, ; 231: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 43
	i64 5573260873512690141, ; 232: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 126
	i64 5574231584441077149, ; 233: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 250
	i64 5591791169662171124, ; 234: System.Linq.Parallel => 0x4d9a087135e137f4 => 59
	i64 5650097808083101034, ; 235: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 119
	i64 5692067934154308417, ; 236: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 310
	i64 5724799082821825042, ; 237: Xamarin.AndroidX.ExifInterface => 0x4f72926f3e13b212 => 273
	i64 5757522595884336624, ; 238: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 259
	i64 5783556987928984683, ; 239: Microsoft.VisualBasic => 0x504352701bbc3c6b => 3
	i64 5892310748065238056, ; 240: EPPlus.System.Drawing.dll => 0x51c5b16814a50c28 => 177
	i64 5896680224035167651, ; 241: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 279
	i64 5959344983920014087, ; 242: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x52b3d8b05c8ef307 => 299
	i64 5979151488806146654, ; 243: System.Formats.Asn1 => 0x52fa3699a489d25e => 38
	i64 5984759512290286505, ; 244: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 124
	i64 6015868276552872553, ; 245: PruebaWebNueva.Domain => 0x537ca852f779b269 => 361
	i64 6068057819846744445, ; 246: ro/Microsoft.Maui.Controls.resources.dll => 0x5436126fec7f197d => 348
	i64 6102788177522843259, ; 247: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0x54b1758374b3de7b => 299
	i64 6182525717148725503, ; 248: Microsoft.AspNetCore.Components.Authorization => 0x55ccbe62215df0ff => 182
	i64 6183170893902868313, ; 249: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 231
	i64 6200764641006662125, ; 250: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 348
	i64 6222399776351216807, ; 251: System.Text.Json.dll => 0x565a67a0ffe264a7 => 137
	i64 6251069312384999852, ; 252: System.Transactions.Local => 0x56c0426b870da1ac => 149
	i64 6278736998281604212, ; 253: System.Private.DataContractSerialization => 0x57228e08a4ad6c74 => 85
	i64 6284145129771520194, ; 254: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 90
	i64 6319713645133255417, ; 255: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 283
	i64 6357457916754632952, ; 256: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 363
	i64 6401687960814735282, ; 257: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 280
	i64 6433271170595107064, ; 258: MimeKit.dll => 0x5947920b731530f8 => 230
	i64 6478287442656530074, ; 259: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 336
	i64 6504860066809920875, ; 260: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 255
	i64 6548213210057960872, ; 261: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 266
	i64 6557084851308642443, ; 262: Xamarin.AndroidX.Window.dll => 0x5aff71ee6c58c08b => 311
	i64 6560151584539558821, ; 263: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 213
	i64 6589202984700901502, ; 264: Xamarin.Google.ErrorProne.Annotations.dll => 0x5b718d34180a787e => 316
	i64 6591971792923354531, ; 265: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x5b7b636b7e9765a3 => 281
	i64 6617685658146568858, ; 266: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 133
	i64 6713440830605852118, ; 267: System.Reflection.TypeExtensions.dll => 0x5d2aeeddb8dd7dd6 => 96
	i64 6739853162153639747, ; 268: Microsoft.VisualBasic.dll => 0x5d88c4bde075ff43 => 3
	i64 6743165466166707109, ; 269: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 344
	i64 6772837112740759457, ; 270: System.Runtime.InteropServices.JavaScript => 0x5dfdf378527ec7a1 => 105
	i64 6777482997383978746, ; 271: pt/Microsoft.Maui.Controls.resources.dll => 0x5e0e74e0a2525efa => 347
	i64 6786606130239981554, ; 272: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 33
	i64 6798329586179154312, ; 273: System.Windows => 0x5e5884bd523ca188 => 154
	i64 6814185388980153342, ; 274: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 158
	i64 6876862101832370452, ; 275: System.Xml.Linq => 0x5f6f85a57d108914 => 155
	i64 6894844156784520562, ; 276: System.Numerics.Vectors => 0x5faf683aead1ad72 => 82
	i64 6920570528939222495, ; 277: Microsoft.AspNetCore.Components.WebView => 0x600ace3ab475a5df => 185
	i64 7011053663211085209, ; 278: Xamarin.AndroidX.Fragment.Ktx => 0x614c442918e5dd99 => 275
	i64 7060896174307865760, ; 279: System.Threading.Tasks.Parallel.dll => 0x61fd57a90988f4a0 => 143
	i64 7083547580668757502, ; 280: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 87
	i64 7101497697220435230, ; 281: System.Configuration => 0x628d9687c0141d1e => 19
	i64 7103753931438454322, ; 282: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 276
	i64 7105430439328552570, ; 283: System.Security.Cryptography.Pkcs => 0x629b8f56a06d167a => 239
	i64 7112547816752919026, ; 284: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 51
	i64 7192745174564810625, ; 285: Xamarin.Android.Glide.GifDecoder.dll => 0x63d1c3a0a1d72f81 => 245
	i64 7220009545223068405, ; 286: sv/Microsoft.Maui.Controls.resources.dll => 0x6432a06d99f35af5 => 351
	i64 7270811800166795866, ; 287: System.Linq => 0x64e71ccf51a90a5a => 61
	i64 7299370801165188114, ; 288: System.IO.Pipes.AccessControl.dll => 0x654c9311e74f3c12 => 54
	i64 7316205155833392065, ; 289: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 4
	i64 7338192458477945005, ; 290: System.Reflection => 0x65d67f295d0740ad => 97
	i64 7349431895026339542, ; 291: Xamarin.Android.Glide.DiskLruCache => 0x65fe6d5e9bf88ed6 => 244
	i64 7377312882064240630, ; 292: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 17
	i64 7488575175965059935, ; 293: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 155
	i64 7489048572193775167, ; 294: System.ObjectModel => 0x67ee71ff6b419e3f => 84
	i64 7496222613193209122, ; 295: System.IdentityModel.Tokens.Jwt => 0x6807eec000a1b522 => 237
	i64 7592577537120840276, ; 296: System.Diagnostics.Process => 0x695e410af5b2aa54 => 29
	i64 7637303409920963731, ; 297: System.IO.Compression.ZipFile.dll => 0x69fd26fcb637f493 => 45
	i64 7654504624184590948, ; 298: System.Net.Http => 0x6a3a4366801b8264 => 64
	i64 7674255102467164136, ; 299: EPPlus.System.Drawing => 0x6a806e5b1248c7e8 => 177
	i64 7694700312542370399, ; 300: System.Net.Mail => 0x6ac9112a7e2cda5f => 66
	i64 7708790323521193081, ; 301: ms/Microsoft.Maui.Controls.resources.dll => 0x6afb1ff4d1730479 => 342
	i64 7714652370974252055, ; 302: System.Private.CoreLib => 0x6b0ff375198b9c17 => 172
	i64 7725404731275645577, ; 303: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x6b3626ac11ce9289 => 284
	i64 7735176074855944702, ; 304: Microsoft.CSharp => 0x6b58dda848e391fe => 1
	i64 7735352534559001595, ; 305: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 319
	i64 7791074099216502080, ; 306: System.IO.FileSystem.AccessControl.dll => 0x6c1f749d468bcd40 => 47
	i64 7820441508502274321, ; 307: System.Data => 0x6c87ca1e14ff8111 => 24
	i64 7836164640616011524, ; 308: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 252
	i64 7972383140441761405, ; 309: Microsoft.Extensions.Caching.Abstractions.dll => 0x6ea3983a0b58267d => 195
	i64 8014722069583580780, ; 310: Microsoft.AspNetCore.Components.Forms.dll => 0x6f3a03422b034e6c => 183
	i64 8025517457475554965, ; 311: WindowsBase => 0x6f605d9b4786ce95 => 165
	i64 8031450141206250471, ; 312: System.Runtime.Intrinsics.dll => 0x6f757159d9dc03e7 => 108
	i64 8064050204834738623, ; 313: System.Collections.dll => 0x6fe942efa61731bf => 12
	i64 8083354569033831015, ; 314: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 278
	i64 8085230611270010360, ; 315: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 63
	i64 8087206902342787202, ; 316: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 27
	i64 8103644804370223335, ; 317: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 23
	i64 8113615946733131500, ; 318: System.Reflection.Extensions => 0x70995ab73cf916ec => 93
	i64 8167236081217502503, ; 319: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 168
	i64 8185542183669246576, ; 320: System.Collections => 0x7198e33f4794aa70 => 12
	i64 8187640529827139739, ; 321: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 323
	i64 8246048515196606205, ; 322: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 228
	i64 8264926008854159966, ; 323: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 29
	i64 8290740647658429042, ; 324: System.Runtime.Extensions => 0x730ea0b15c929a72 => 103
	i64 8318905602908530212, ; 325: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 14
	i64 8368701292315763008, ; 326: System.Security.Cryptography => 0x7423997c6fd56140 => 126
	i64 8398329775253868912, ; 327: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 261
	i64 8400357532724379117, ; 328: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 293
	i64 8410671156615598628, ; 329: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 91
	i64 8426919725312979251, ; 330: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 282
	i64 8476828615142258695, ; 331: BCrypt.Net-Next => 0x75a3beb69b6bb807 => 173
	i64 8476857680833348370, ; 332: System.Security.Permissions.dll => 0x75a3d925fd9d0312 => 240
	i64 8518412311883997971, ; 333: System.Collections.Immutable => 0x76377add7c28e313 => 9
	i64 8563666267364444763, ; 334: System.Private.Uri => 0x76d841191140ca5b => 86
	i64 8594639773772191234, ; 335: EPPlus.Interfaces.dll => 0x77464b5680229602 => 176
	i64 8598790081731763592, ; 336: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 272
	i64 8601935802264776013, ; 337: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 305
	i64 8614108721271900878, ; 338: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x778b763e14018ace => 346
	i64 8623059219396073920, ; 339: System.Net.Quic.dll => 0x77ab42ac514299c0 => 71
	i64 8626175481042262068, ; 340: Java.Interop => 0x77b654e585b55834 => 168
	i64 8638972117149407195, ; 341: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 1
	i64 8639588376636138208, ; 342: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 292
	i64 8648495978913578441, ; 343: Microsoft.Win32.Registry.dll => 0x7805a1456889bdc9 => 5
	i64 8677882282824630478, ; 344: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 346
	i64 8684531736582871431, ; 345: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 44
	i64 8725526185868997716, ; 346: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 27
	i64 8853378295825400934, ; 347: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 320
	i64 8941376889969657626, ; 348: System.Xml.XDocument => 0x7c1626e87187471a => 158
	i64 8951477988056063522, ; 349: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 295
	i64 8954753533646919997, ; 350: System.Runtime.Serialization.Json => 0x7c45ace50032d93d => 112
	i64 8955323522379913726, ; 351: Microsoft.Identity.Client => 0x7c47b34bd82799fe => 215
	i64 9045785047181495996, ; 352: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 356
	i64 9052662452269567435, ; 353: Microsoft.IdentityModel.Protocols => 0x7da184898b0b4dcb => 218
	i64 9111603110219107042, ; 354: Microsoft.Extensions.Caching.Memory => 0x7e72eac0def44ae2 => 196
	i64 9138683372487561558, ; 355: System.Security.Cryptography.Csp => 0x7ed3201bc3e3d156 => 121
	i64 9250544137016314866, ; 356: Microsoft.EntityFrameworkCore => 0x806088e191ee0bf2 => 190
	i64 9286073997824813334, ; 357: BouncyCastle.Cryptography => 0x80dec319ee56e916 => 174
	i64 9312692141327339315, ; 358: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 310
	i64 9324707631942237306, ; 359: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 251
	i64 9427266486299436557, ; 360: Microsoft.IdentityModel.Logging.dll => 0x82d460ebe6d2a60d => 217
	i64 9468215723722196442, ; 361: System.Xml.XPath.XDocument.dll => 0x8365dc09353ac5da => 159
	i64 9500688326720985260, ; 362: Microsoft.EntityFrameworkCore.SqlServer => 0x83d939b243e798ac => 194
	i64 9554839972845591462, ; 363: System.ServiceModel.Web => 0x84999c54e32a1ba6 => 131
	i64 9575902398040817096, ; 364: Xamarin.Google.Crypto.Tink.Android.dll => 0x84e4707ee708bdc8 => 315
	i64 9584643793929893533, ; 365: System.IO.dll => 0x85037ebfbbd7f69d => 57
	i64 9650158550865574924, ; 366: Microsoft.Extensions.Configuration.Json => 0x85ec4012c28a7c0c => 201
	i64 9659729154652888475, ; 367: System.Text.RegularExpressions => 0x860e407c9991dd9b => 138
	i64 9662334977499516867, ; 368: System.Numerics.dll => 0x8617827802b0cfc3 => 83
	i64 9667360217193089419, ; 369: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 30
	i64 9678050649315576968, ; 370: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 262
	i64 9702891218465930390, ; 371: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 10
	i64 9780093022148426479, ; 372: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x87b9dec9576efaef => 312
	i64 9808709177481450983, ; 373: Mono.Android.dll => 0x881f890734e555e7 => 171
	i64 9819168441846169364, ; 374: Microsoft.IdentityModel.Protocols.dll => 0x8844b1ac75f77f14 => 218
	i64 9825649861376906464, ; 375: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 259
	i64 9834056768316610435, ; 376: System.Transactions.dll => 0x8879968718899783 => 150
	i64 9836529246295212050, ; 377: System.Reflection.Metadata => 0x88825f3bbc2ac012 => 94
	i64 9864956466380592553, ; 378: Microsoft.EntityFrameworkCore.Sqlite => 0x88e75da3af4ed5a9 => 193
	i64 9907349773706910547, ; 379: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 272
	i64 9933555792566666578, ; 380: System.Linq.Queryable.dll => 0x89db145cf475c552 => 60
	i64 9956195530459977388, ; 381: Microsoft.Maui => 0x8a2b8315b36616ac => 226
	i64 9974604633896246661, ; 382: System.Xml.Serialization.dll => 0x8a6cea111a59dd85 => 157
	i64 9991543690424095600, ; 383: es/Microsoft.Maui.Controls.resources.dll => 0x8aa9180c89861370 => 331
	i64 10017511394021241210, ; 384: Microsoft.Extensions.Logging.Debug => 0x8b055989ae10717a => 212
	i64 10038780035334861115, ; 385: System.Net.Http.dll => 0x8b50e941206af13b => 64
	i64 10051358222726253779, ; 386: System.Private.Xml => 0x8b7d990c97ccccd3 => 88
	i64 10078727084704864206, ; 387: System.Net.WebSockets.Client => 0x8bded4e257f117ce => 79
	i64 10089571585547156312, ; 388: System.IO.FileSystem.AccessControl => 0x8c055be67469bb58 => 47
	i64 10092835686693276772, ; 389: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 224
	i64 10105485790837105934, ; 390: System.Threading.Tasks.Parallel => 0x8c3de5c91d9a650e => 143
	i64 10143853363526200146, ; 391: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 328
	i64 10205853378024263619, ; 392: Microsoft.Extensions.Configuration.Binder => 0x8da279930adb4fc3 => 199
	i64 10226222362177979215, ; 393: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 321
	i64 10229024438826829339, ; 394: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 266
	i64 10236703004850800690, ; 395: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 74
	i64 10245369515835430794, ; 396: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 91
	i64 10321854143672141184, ; 397: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 318
	i64 10360651442923773544, ; 398: System.Text.Encoding => 0x8fc86d98211c1e68 => 135
	i64 10364469296367737616, ; 399: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 90
	i64 10376576884623852283, ; 400: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 304
	i64 10389202449435358202, ; 401: PruebaWebNueva.Client.SharedUI.dll => 0x902ddc955a3673fa => 360
	i64 10406448008575299332, ; 402: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 324
	i64 10430153318873392755, ; 403: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 263
	i64 10506226065143327199, ; 404: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 326
	i64 10546663366131771576, ; 405: System.Runtime.Serialization.Json.dll => 0x925d4673efe8e8b8 => 112
	i64 10566960649245365243, ; 406: System.Globalization.dll => 0x92a562b96dcd13fb => 42
	i64 10595762989148858956, ; 407: System.Xml.XPath.XDocument => 0x930bb64cc472ea4c => 159
	i64 10670374202010151210, ; 408: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 4
	i64 10714184849103829812, ; 409: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 103
	i64 10734191584620811116, ; 410: Microsoft.Extensions.FileProviders.Embedded.dll => 0x94f7825fc04f936c => 207
	i64 10785150219063592792, ; 411: System.Net.Primitives => 0x95ac8cfb68830758 => 70
	i64 10811915265162633087, ; 412: Microsoft.EntityFrameworkCore.Relational.dll => 0x960ba3a651a45f7f => 192
	i64 10822644899632537592, ; 413: System.Linq.Queryable => 0x9631c23204ca5ff8 => 60
	i64 10830817578243619689, ; 414: System.Formats.Tar => 0x964ecb340a447b69 => 39
	i64 10847732767863316357, ; 415: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 253
	i64 10889380495983713167, ; 416: Microsoft.Data.SqlClient.dll => 0x971ed9dddf2d1b8f => 188
	i64 10899834349646441345, ; 417: System.Web => 0x9743fd975946eb81 => 153
	i64 10943875058216066601, ; 418: System.IO.UnmanagedMemoryStream.dll => 0x97e07461df39de29 => 56
	i64 10964653383833615866, ; 419: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 34
	i64 11002576679268595294, ; 420: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 211
	i64 11009005086950030778, ; 421: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 226
	i64 11019817191295005410, ; 422: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 250
	i64 11023048688141570732, ; 423: System.Core => 0x98f9bc61168392ac => 21
	i64 11037814507248023548, ; 424: System.Xml => 0x992e31d0412bf7fc => 163
	i64 11047101296015504039, ; 425: Microsoft.Win32.SystemEvents => 0x994f301942c2f2a7 => 229
	i64 11051904132540108364, ; 426: Microsoft.Extensions.FileProviders.Composite.dll => 0x99604040c7b98e4c => 206
	i64 11071824625609515081, ; 427: Xamarin.Google.ErrorProne.Annotations => 0x99a705d600e0a049 => 316
	i64 11103970607964515343, ; 428: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 337
	i64 11136029745144976707, ; 429: Jsr305Binding.dll => 0x9a8b200d4f8cd543 => 314
	i64 11162124722117608902, ; 430: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 309
	i64 11188319605227840848, ; 431: System.Threading.Overlapped => 0x9b44e5671724e550 => 140
	i64 11218356222449480316, ; 432: Microsoft.AspNetCore.Components => 0x9baf9b8c02e4f27c => 181
	i64 11220793807500858938, ; 433: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 340
	i64 11226290749488709958, ; 434: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 213
	i64 11235648312900863002, ; 435: System.Reflection.DispatchProxy.dll => 0x9bed0a9c8fac441a => 89
	i64 11329751333533450475, ; 436: System.Threading.Timer.dll => 0x9d3b5ccf6cc500eb => 147
	i64 11340910727871153756, ; 437: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 265
	i64 11341245327015630248, ; 438: System.Configuration.ConfigurationManager.dll => 0x9d643289535355a8 => 235
	i64 11347436699239206956, ; 439: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 162
	i64 11392833485892708388, ; 440: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 294
	i64 11398376662953476300, ; 441: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x9e2f2b2f0b71c0cc => 193
	i64 11432101114902388181, ; 442: System.AppContext => 0x9ea6fb64e61a9dd5 => 6
	i64 11446671985764974897, ; 443: Mono.Android.Export => 0x9edabf8623efc131 => 169
	i64 11448276831755070604, ; 444: System.Diagnostics.TextWriterTraceListener => 0x9ee0731f77186c8c => 31
	i64 11485890710487134646, ; 445: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 107
	i64 11508496261504176197, ; 446: Xamarin.AndroidX.Fragment.Ktx.dll => 0x9fb664600dde1045 => 275
	i64 11513602507638267977, ; 447: System.IO.Pipelines.dll => 0x9fc8887aa0d36049 => 238
	i64 11518296021396496455, ; 448: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 338
	i64 11529969570048099689, ; 449: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 309
	i64 11530571088791430846, ; 450: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 210
	i64 11580057168383206117, ; 451: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 248
	i64 11591352189662810718, ; 452: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 302
	i64 11597940890313164233, ; 453: netstandard => 0xa0f429ca8d1805c9 => 167
	i64 11672361001936329215, ; 454: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 276
	i64 11692977985522001935, ; 455: System.Threading.Overlapped.dll => 0xa245cd869980680f => 140
	i64 11705530742807338875, ; 456: he/Microsoft.Maui.Controls.resources.dll => 0xa272663128721f7b => 334
	i64 11707554492040141440, ; 457: System.Linq.Parallel.dll => 0xa27996c7fe94da80 => 59
	i64 11743665907891708234, ; 458: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 144
	i64 11991047634523762324, ; 459: System.Net => 0xa668c24ad493ae94 => 81
	i64 12040886584167504988, ; 460: System.Net.ServicePoint => 0xa719d28d8e121c5c => 74
	i64 12048689113179125827, ; 461: Microsoft.Extensions.FileProviders.Physical => 0xa7358ae968287843 => 208
	i64 12058074296353848905, ; 462: Microsoft.Extensions.FileSystemGlobbing.dll => 0xa756e2afa5707e49 => 209
	i64 12063623837170009990, ; 463: System.Security => 0xa76a99f6ce740786 => 130
	i64 12096697103934194533, ; 464: System.Diagnostics.Contracts => 0xa7e019eccb7e8365 => 25
	i64 12102847907131387746, ; 465: System.Buffers => 0xa7f5f40c43256f62 => 7
	i64 12123043025855404482, ; 466: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 93
	i64 12137774235383566651, ; 467: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 306
	i64 12145679461940342714, ; 468: System.Text.Json => 0xa88e1f1ebcb62fba => 137
	i64 12191646537372739477, ; 469: Xamarin.Android.Glide.dll => 0xa9316dee7f392795 => 242
	i64 12198439281774268251, ; 470: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0xa9498fe58c538f5b => 219
	i64 12201331334810686224, ; 471: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 113
	i64 12269460666702402136, ; 472: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 9
	i64 12279246230491828964, ; 473: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 234
	i64 12313367145828839434, ; 474: System.IO.Pipelines => 0xaae1de2e1c17f00a => 238
	i64 12332222936682028543, ; 475: System.Runtime.Handles => 0xab24db6c07db5dff => 104
	i64 12375446203996702057, ; 476: System.Configuration.dll => 0xabbe6ac12e2e0569 => 19
	i64 12439275739440478309, ; 477: Microsoft.IdentityModel.JsonWebTokens => 0xaca12f61007bf865 => 216
	i64 12451044538927396471, ; 478: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 274
	i64 12459959602091767212, ; 479: Microsoft.AspNetCore.Components.Authorization.dll => 0xaceaab3e0e65b5ac => 182
	i64 12466513435562512481, ; 480: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 288
	i64 12475113361194491050, ; 481: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 363
	i64 12487638416075308985, ; 482: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 268
	i64 12493213219680520345, ; 483: Microsoft.Data.SqlClient => 0xad60cf3b3e458899 => 188
	i64 12517810545449516888, ; 484: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 33
	i64 12538491095302438457, ; 485: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 256
	i64 12550732019250633519, ; 486: System.IO.Compression => 0xae2d28465e8e1b2f => 46
	i64 12681088699309157496, ; 487: it/Microsoft.Maui.Controls.resources.dll => 0xaffc46fc178aec78 => 339
	i64 12699999919562409296, ; 488: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 30
	i64 12700543734426720211, ; 489: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 257
	i64 12708238894395270091, ; 490: System.IO => 0xb05cbbf17d3ba3cb => 57
	i64 12708922737231849740, ; 491: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 134
	i64 12717050818822477433, ; 492: System.Runtime.Serialization.Xml.dll => 0xb07c0a5786811679 => 114
	i64 12753841065332862057, ; 493: Xamarin.AndroidX.Window => 0xb0febee04cf46c69 => 311
	i64 12823819093633476069, ; 494: th/Microsoft.Maui.Controls.resources.dll => 0xb1f75b85abe525e5 => 352
	i64 12828192437253469131, ; 495: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 322
	i64 12835242264250840079, ; 496: System.IO.Pipes => 0xb21ff0d5d6c0740f => 55
	i64 12843321153144804894, ; 497: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 214
	i64 12843770487262409629, ; 498: System.AppContext.dll => 0xb23e3d357debf39d => 6
	i64 12859557719246324186, ; 499: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 77
	i64 12963446364377008305, ; 500: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 236
	i64 12982280885948128408, ; 501: Xamarin.AndroidX.CustomView.PoolingContainer => 0xb42a53aec5481c98 => 267
	i64 13003699287675270979, ; 502: Microsoft.AspNetCore.Components.WebView.Maui => 0xb4766b9b07e27743 => 186
	i64 13068258254871114833, ; 503: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 111
	i64 13129914918964716986, ; 504: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 271
	i64 13162471042547327635, ; 505: System.Security.Permissions => 0xb6aa7dace9662293 => 240
	i64 13173818576982874404, ; 506: System.Runtime.CompilerServices.VisualC.dll => 0xb6d2ce32a8819924 => 102
	i64 13221551921002590604, ; 507: ca/Microsoft.Maui.Controls.resources.dll => 0xb77c636bdebe318c => 326
	i64 13222659110913276082, ; 508: ja/Microsoft.Maui.Controls.resources.dll => 0xb78052679c1178b2 => 340
	i64 13343850469010654401, ; 509: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 170
	i64 13370592475155966277, ; 510: System.Runtime.Serialization => 0xb98de304062ea945 => 115
	i64 13381594904270902445, ; 511: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 334
	i64 13401370062847626945, ; 512: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 306
	i64 13404347523447273790, ; 513: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 261
	i64 13431476299110033919, ; 514: System.Net.WebClient => 0xba663087f18829ff => 76
	i64 13454009404024712428, ; 515: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 317
	i64 13456109421200774152, ; 516: PruebaWebNueva.Application => 0xbabdb4399d759408 => 359
	i64 13463706743370286408, ; 517: System.Private.DataContractSerialization.dll => 0xbad8b1f3069e0548 => 85
	i64 13465488254036897740, ; 518: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 319
	i64 13467053111158216594, ; 519: uk/Microsoft.Maui.Controls.resources.dll => 0xbae49573fde79792 => 354
	i64 13491513212026656886, ; 520: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 254
	i64 13540124433173649601, ; 521: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 355
	i64 13545416393490209236, ; 522: id/Microsoft.Maui.Controls.resources.dll => 0xbbfafc7174bc99d4 => 338
	i64 13550417756503177631, ; 523: Microsoft.Extensions.FileProviders.Abstractions.dll => 0xbc0cc1280684799f => 205
	i64 13572454107664307259, ; 524: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 296
	i64 13578472628727169633, ; 525: System.Xml.XPath => 0xbc706ce9fba5c261 => 160
	i64 13580399111273692417, ; 526: Microsoft.VisualBasic.Core.dll => 0xbc77450a277fbd01 => 2
	i64 13621154251410165619, ; 527: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0xbd080f9faa1acf73 => 267
	i64 13647894001087880694, ; 528: System.Data.dll => 0xbd670f48cb071df6 => 24
	i64 13675589307506966157, ; 529: Xamarin.AndroidX.Activity.Ktx => 0xbdc97404d0153e8d => 247
	i64 13702626353344114072, ; 530: System.Diagnostics.Tools.dll => 0xbe29821198fb6d98 => 32
	i64 13710614125866346983, ; 531: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 117
	i64 13713329104121190199, ; 532: System.Dynamic.Runtime => 0xbe4f8829f32b5737 => 37
	i64 13717397318615465333, ; 533: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 16
	i64 13755568601956062840, ; 534: fr/Microsoft.Maui.Controls.resources.dll => 0xbee598c36b1b9678 => 333
	i64 13768883594457632599, ; 535: System.IO.IsolatedStorage => 0xbf14e6adb159cf57 => 52
	i64 13814445057219246765, ; 536: hr/Microsoft.Maui.Controls.resources.dll => 0xbfb6c49664b43aad => 336
	i64 13828521679616088467, ; 537: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 320
	i64 13881769479078963060, ; 538: System.Console.dll => 0xc0a5f3cade5c6774 => 20
	i64 13882652712560114096, ; 539: System.Windows.Extensions.dll => 0xc0a91716b04239b0 => 241
	i64 13911222732217019342, ; 540: System.Security.Cryptography.OpenSsl.dll => 0xc10e975ec1226bce => 123
	i64 13928444506500929300, ; 541: System.Windows.dll => 0xc14bc67b8bba9714 => 154
	i64 13955418299340266673, ; 542: Microsoft.Extensions.DependencyModel.dll => 0xc1ab9b0118299cb1 => 204
	i64 13959074834287824816, ; 543: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 274
	i64 13961013029440053076, ; 544: MailKit => 0xc1bf7b61b45fdf54 => 179
	i64 14075334701871371868, ; 545: System.ServiceModel.Web.dll => 0xc355a25647c5965c => 131
	i64 14082136096249122791, ; 546: Microsoft.AspNetCore.Metadata => 0xc36dcc2b4fa28fe7 => 187
	i64 14100563506285742564, ; 547: da/Microsoft.Maui.Controls.resources.dll => 0xc3af43cd0cff89e4 => 328
	i64 14124974489674258913, ; 548: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 256
	i64 14125464355221830302, ; 549: System.Threading.dll => 0xc407bafdbc707a9e => 148
	i64 14133832980772275001, ; 550: Microsoft.EntityFrameworkCore.dll => 0xc425763635a1c339 => 190
	i64 14178052285788134900, ; 551: Xamarin.Android.Glide.Annotations.dll => 0xc4c28f6f75511df4 => 243
	i64 14212104595480609394, ; 552: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 120
	i64 14220608275227875801, ; 553: System.Diagnostics.FileVersionInfo.dll => 0xc559bfe1def019d9 => 28
	i64 14226382999226559092, ; 554: System.ServiceProcess => 0xc56e43f6938e2a74 => 132
	i64 14232023429000439693, ; 555: System.Resources.Writer.dll => 0xc5824de7789ba78d => 100
	i64 14254574811015963973, ; 556: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 134
	i64 14261073672896646636, ; 557: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 294
	i64 14298246716367104064, ; 558: System.Web.dll => 0xc66d93a217f4e840 => 153
	i64 14327695147300244862, ; 559: System.Reflection.dll => 0xc6d632d338eb4d7e => 97
	i64 14327709162229390963, ; 560: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 125
	i64 14331727281556788554, ; 561: Xamarin.Android.Glide.DiskLruCache.dll => 0xc6e48607a2f7954a => 244
	i64 14346402571976470310, ; 562: System.Net.Ping.dll => 0xc718a920f3686f26 => 69
	i64 14461014870687870182, ; 563: System.Net.Requests.dll => 0xc8afd8683afdece6 => 72
	i64 14464374589798375073, ; 564: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 349
	i64 14486659737292545672, ; 565: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 279
	i64 14495724990987328804, ; 566: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 297
	i64 14522721392235705434, ; 567: el/Microsoft.Maui.Controls.resources.dll => 0xc98b12295c2cf45a => 330
	i64 14551742072151931844, ; 568: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 136
	i64 14561513370130550166, ; 569: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 124
	i64 14574160591280636898, ; 570: System.Net.Quic => 0xca41d1d72ec783e2 => 71
	i64 14622043554576106986, ; 571: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 111
	i64 14644440854989303794, ; 572: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 289
	i64 14669215534098758659, ; 573: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 202
	i64 14690985099581930927, ; 574: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 152
	i64 14705122255218365489, ; 575: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 341
	i64 14744092281598614090, ; 576: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 357
	i64 14792063746108907174, ; 577: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 317
	i64 14832630590065248058, ; 578: System.Security.Claims => 0xcdd816ef5d6e873a => 118
	i64 14852515768018889994, ; 579: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 265
	i64 14860392635077829057, ; 580: EPPlus => 0xce3ab85e2ca521c1 => 175
	i64 14889905118082851278, ; 581: GoogleGson.dll => 0xcea391d0969961ce => 178
	i64 14892012299694389861, ; 582: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xceab0e490a083a65 => 358
	i64 14904040806490515477, ; 583: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 325
	i64 14912225920358050525, ; 584: System.Security.Principal.Windows => 0xcef2de7759506add => 127
	i64 14935719434541007538, ; 585: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 133
	i64 14954917835170835695, ; 586: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 203
	i64 14984936317414011727, ; 587: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 77
	i64 14987728460634540364, ; 588: System.IO.Compression.dll => 0xcfff1ba06622494c => 46
	i64 14988210264188246988, ; 589: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 268
	i64 15015154896917945444, ; 590: System.Net.Security.dll => 0xd0608bd33642dc64 => 73
	i64 15024878362326791334, ; 591: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 63
	i64 15071021337266399595, ; 592: System.Resources.Reader.dll => 0xd127060e7a18a96b => 98
	i64 15076659072870671916, ; 593: System.ObjectModel.dll => 0xd13b0d8c1620662c => 84
	i64 15111608613780139878, ; 594: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 342
	i64 15115185479366240210, ; 595: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 43
	i64 15133485256822086103, ; 596: System.Linq.dll => 0xd204f0a9127dd9d7 => 61
	i64 15150743910298169673, ; 597: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 295
	i64 15227001540531775957, ; 598: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 198
	i64 15234786388537674379, ; 599: System.Dynamic.Runtime.dll => 0xd36cd580c5be8a8b => 37
	i64 15250465174479574862, ; 600: System.Globalization.Calendars.dll => 0xd3a489469852174e => 40
	i64 15272359115529052076, ; 601: Xamarin.AndroidX.Collection.Ktx => 0xd3f251b2fb4edfac => 258
	i64 15279429628684179188, ; 602: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 323
	i64 15299439993936780255, ; 603: System.Xml.XPath.dll => 0xd452879d55019bdf => 160
	i64 15338463749992804988, ; 604: System.Resources.Reader => 0xd4dd2b839286f27c => 98
	i64 15370334346939861994, ; 605: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 263
	i64 15391712275433856905, ; 606: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 203
	i64 15427448221306938193, ; 607: Microsoft.AspNetCore.Components.Web => 0xd6194e6b4dbb6351 => 184
	i64 15481710163200268842, ; 608: Microsoft.Extensions.FileProviders.Composite => 0xd6da155e291b5a2a => 206
	i64 15526743539506359484, ; 609: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 135
	i64 15527772828719725935, ; 610: System.Console => 0xd77dbb1e38cd3d6f => 20
	i64 15530465045505749832, ; 611: System.Net.HttpListener.dll => 0xd7874bacc9fdb348 => 65
	i64 15536481058354060254, ; 612: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 329
	i64 15541854775306130054, ; 613: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 125
	i64 15557562860424774966, ; 614: System.Net.Sockets => 0xd7e790fe7a6dc536 => 75
	i64 15582737692548360875, ; 615: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 287
	i64 15592226634512578529, ; 616: Microsoft.AspNetCore.Authorization.dll => 0xd862b7834f81b7e1 => 180
	i64 15609085926864131306, ; 617: System.dll => 0xd89e9cf3334914ea => 164
	i64 15620595871140898079, ; 618: Microsoft.Extensions.DependencyModel => 0xd8c7812eef49651f => 204
	i64 15620612276725577442, ; 619: BouncyCastle.Cryptography.dll => 0xd8c7901aa85576e2 => 174
	i64 15661133872274321916, ; 620: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 156
	i64 15664356999916475676, ; 621: de/Microsoft.Maui.Controls.resources.dll => 0xd962f9b2b6ecd51c => 329
	i64 15710114879900314733, ; 622: Microsoft.Win32.Registry => 0xda058a3f5d096c6d => 5
	i64 15743187114543869802, ; 623: hu/Microsoft.Maui.Controls.resources.dll => 0xda7b09450ae4ef6a => 337
	i64 15755368083429170162, ; 624: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 49
	i64 15777549416145007739, ; 625: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 301
	i64 15783653065526199428, ; 626: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 330
	i64 15817206913877585035, ; 627: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 144
	i64 15827202283623377193, ; 628: Microsoft.Extensions.Configuration.Json.dll => 0xdba5849eef9f6929 => 201
	i64 15847085070278954535, ; 629: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 139
	i64 15885744048853936810, ; 630: System.Resources.Writer => 0xdc75800bd0b6eaaa => 100
	i64 15928521404965645318, ; 631: Microsoft.Maui.Controls.Compatibility => 0xdd0d79d32c2eec06 => 223
	i64 15934062614519587357, ; 632: System.Security.Cryptography.OpenSsl => 0xdd2129868f45a21d => 123
	i64 15937190497610202713, ; 633: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 120
	i64 15963349826457351533, ; 634: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 142
	i64 15971679995444160383, ; 635: System.Formats.Tar.dll => 0xdda6ce5592a9677f => 39
	i64 16018552496348375205, ; 636: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 68
	i64 16054465462676478687, ; 637: System.Globalization.Extensions => 0xdecceb47319bdadf => 41
	i64 16154507427712707110, ; 638: System => 0xe03056ea4e39aa26 => 164
	i64 16219561732052121626, ; 639: System.Net.Security => 0xe1177575db7c781a => 73
	i64 16288847719894691167, ; 640: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 343
	i64 16315482530584035869, ; 641: WindowsBase.dll => 0xe26c3ceb1e8d821d => 165
	i64 16321164108206115771, ; 642: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 211
	i64 16337011941688632206, ; 643: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 127
	i64 16361933716545543812, ; 644: Xamarin.AndroidX.ExifInterface.dll => 0xe3114406a52f1e84 => 273
	i64 16423015068819898779, ; 645: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 322
	i64 16454459195343277943, ; 646: System.Net.NetworkInformation => 0xe459fb756d988f77 => 68
	i64 16496768397145114574, ; 647: Mono.Android.Export.dll => 0xe4f04b741db987ce => 169
	i64 16589693266713801121, ; 648: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xe63a6e214f2a71a1 => 286
	i64 16621146507174665210, ; 649: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 260
	i64 16649148416072044166, ; 650: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 228
	i64 16677317093839702854, ; 651: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 293
	i64 16702652415771857902, ; 652: System.ValueTuple => 0xe7cbbde0b0e6d3ee => 151
	i64 16709499819875633724, ; 653: System.IO.Compression.ZipFile => 0xe7e4118e32240a3c => 45
	i64 16737807731308835127, ; 654: System.Runtime.Intrinsics => 0xe848a3736f733137 => 108
	i64 16755018182064898362, ; 655: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 232
	i64 16758309481308491337, ; 656: System.IO.FileSystem.DriveInfo => 0xe89179af15740e49 => 48
	i64 16762783179241323229, ; 657: System.Reflection.TypeExtensions => 0xe8a15e7d0d927add => 96
	i64 16765015072123548030, ; 658: System.Diagnostics.TextWriterTraceListener.dll => 0xe8a94c621bfe717e => 31
	i64 16822611501064131242, ; 659: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 23
	i64 16833383113903931215, ; 660: mscorlib => 0xe99c30c1484d7f4f => 166
	i64 16856067890322379635, ; 661: System.Data.Common.dll => 0xe9ecc87060889373 => 22
	i64 16890310621557459193, ; 662: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 138
	i64 16933958494752847024, ; 663: System.Net.WebProxy.dll => 0xeb018187f0f3b4b0 => 78
	i64 16942731696432749159, ; 664: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 350
	i64 16977952268158210142, ; 665: System.IO.Pipes.AccessControl => 0xeb9dcda2851b905e => 54
	i64 16989020923549080504, ; 666: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xebc52084add25bb8 => 286
	i64 16998075588627545693, ; 667: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 291
	i64 17008137082415910100, ; 668: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 10
	i64 17024911836938395553, ; 669: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 249
	i64 17031351772568316411, ; 670: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 290
	i64 17037200463775726619, ; 671: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 277
	i64 17047433665992082296, ; 672: Microsoft.Extensions.Configuration.FileExtensions => 0xec94a699197e4378 => 200
	i64 17062143951396181894, ; 673: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 16
	i64 17079998892748052666, ; 674: Microsoft.AspNetCore.Components.dll => 0xed08587fce5018ba => 181
	i64 17089008752050867324, ; 675: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xed285aeb25888c7c => 357
	i64 17118171214553292978, ; 676: System.Threading.Channels => 0xed8ff6060fc420b2 => 139
	i64 17137864900836977098, ; 677: Microsoft.IdentityModel.Tokens => 0xedd5ed53b705e9ca => 220
	i64 17187273293601214786, ; 678: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 13
	i64 17201328579425343169, ; 679: System.ComponentModel.EventBasedAsync => 0xeeb76534d96c16c1 => 15
	i64 17202182880784296190, ; 680: System.Security.Cryptography.Encoding.dll => 0xeeba6e30627428fe => 122
	i64 17205988430934219272, ; 681: Microsoft.Extensions.FileSystemGlobbing => 0xeec7f35113509a08 => 209
	i64 17230721278011714856, ; 682: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 87
	i64 17234219099804750107, ; 683: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 149
	i64 17260702271250283638, ; 684: System.Data.Common => 0xef8a5543bba6bc76 => 22
	i64 17333249706306540043, ; 685: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 34
	i64 17338386382517543202, ; 686: System.Net.WebSockets.Client.dll => 0xf09e528d5c6da122 => 79
	i64 17342750010158924305, ; 687: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 335
	i64 17360349973592121190, ; 688: Xamarin.Google.Crypto.Tink.Android => 0xf0ec5a52686b9f66 => 315
	i64 17438153253682247751, ; 689: sk/Microsoft.Maui.Controls.resources.dll => 0xf200c3fe308d7847 => 350
	i64 17470386307322966175, ; 690: System.Threading.Timer => 0xf27347c8d0d5709f => 147
	i64 17509662556995089465, ; 691: System.Net.WebSockets.dll => 0xf2fed1534ea67439 => 80
	i64 17514990004910432069, ; 692: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 333
	i64 17522591619082469157, ; 693: GoogleGson => 0xf32cc03d27a5bf25 => 178
	i64 17581456170064358811, ; 694: PruebaWebNueva.Infrastructure => 0xf3fde13c72c92d9b => 362
	i64 17590473451926037903, ; 695: Xamarin.Android.Glide => 0xf41dea67fcfda58f => 242
	i64 17608862831326185980, ; 696: Microsoft.IO.RecyclableMemoryStream.dll => 0xf45f3f7307c6c9fc => 221
	i64 17623389608345532001, ; 697: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 345
	i64 17627500474728259406, ; 698: System.Globalization => 0xf4a176498a351f4e => 42
	i64 17685921127322830888, ; 699: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 26
	i64 17702523067201099846, ; 700: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xf5abfef008ae1846 => 356
	i64 17704177640604968747, ; 701: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 288
	i64 17710060891934109755, ; 702: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 285
	i64 17712670374920797664, ; 703: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 107
	i64 17777860260071588075, ; 704: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 110
	i64 17790600151040787804, ; 705: Microsoft.IdentityModel.Logging => 0xf6e4e89427cc055c => 217
	i64 17838668724098252521, ; 706: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 7
	i64 17891337867145587222, ; 707: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 318
	i64 17928294245072900555, ; 708: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 44
	i64 17958341848870185232, ; 709: Microsoft.IO.RecyclableMemoryStream => 0xf938d8c3a0f06910 => 221
	i64 17992315986609351877, ; 710: System.Xml.XmlDocument.dll => 0xf9b18c0ffc6eacc5 => 161
	i64 18017743553296241350, ; 711: Microsoft.Extensions.Caching.Abstractions => 0xfa0be24cb44e92c6 => 195
	i64 18025913125965088385, ; 712: System.Threading => 0xfa28e87b91334681 => 148
	i64 18099568558057551825, ; 713: nl/Microsoft.Maui.Controls.resources.dll => 0xfb2e95b53ad977d1 => 344
	i64 18116111925905154859, ; 714: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 254
	i64 18121036031235206392, ; 715: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 290
	i64 18146411883821974900, ; 716: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 38
	i64 18146811631844267958, ; 717: System.ComponentModel.EventBasedAsync.dll => 0xfbd66d08820117b6 => 15
	i64 18203743254473369877, ; 718: System.Security.Cryptography.Pkcs.dll => 0xfca0b00ad94c6915 => 239
	i64 18225059387460068507, ; 719: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 146
	i64 18245806341561545090, ; 720: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 8
	i64 18260797123374478311, ; 721: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 271
	i64 18305135509493619199, ; 722: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 292
	i64 18318849532986632368, ; 723: System.Security.dll => 0xfe39a097c37fa8b0 => 130
	i64 18324163916253801303, ; 724: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 339
	i64 18370042311372477656, ; 725: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 233
	i64 18380184030268848184, ; 726: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 308
	i64 18439108438687598470 ; 727: System.Reflection.Metadata.dll => 0xffe4df6e2ee1c786 => 94
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [728 x i32] [
	i32 270, ; 0
	i32 214, ; 1
	i32 171, ; 2
	i32 227, ; 3
	i32 58, ; 4
	i32 257, ; 5
	i32 151, ; 6
	i32 298, ; 7
	i32 301, ; 8
	i32 264, ; 9
	i32 132, ; 10
	i32 56, ; 11
	i32 300, ; 12
	i32 332, ; 13
	i32 95, ; 14
	i32 283, ; 15
	i32 200, ; 16
	i32 129, ; 17
	i32 199, ; 18
	i32 215, ; 19
	i32 207, ; 20
	i32 236, ; 21
	i32 145, ; 22
	i32 258, ; 23
	i32 18, ; 24
	i32 335, ; 25
	i32 233, ; 26
	i32 269, ; 27
	i32 284, ; 28
	i32 150, ; 29
	i32 104, ; 30
	i32 95, ; 31
	i32 313, ; 32
	i32 343, ; 33
	i32 361, ; 34
	i32 36, ; 35
	i32 194, ; 36
	i32 232, ; 37
	i32 28, ; 38
	i32 253, ; 39
	i32 291, ; 40
	i32 50, ; 41
	i32 115, ; 42
	i32 70, ; 43
	i32 224, ; 44
	i32 65, ; 45
	i32 170, ; 46
	i32 234, ; 47
	i32 145, ; 48
	i32 341, ; 49
	i32 173, ; 50
	i32 312, ; 51
	i32 252, ; 52
	i32 287, ; 53
	i32 277, ; 54
	i32 40, ; 55
	i32 89, ; 56
	i32 189, ; 57
	i32 81, ; 58
	i32 66, ; 59
	i32 62, ; 60
	i32 86, ; 61
	i32 222, ; 62
	i32 251, ; 63
	i32 106, ; 64
	i32 331, ; 65
	i32 298, ; 66
	i32 102, ; 67
	i32 35, ; 68
	i32 248, ; 69
	i32 353, ; 70
	i32 300, ; 71
	i32 225, ; 72
	i32 353, ; 73
	i32 230, ; 74
	i32 119, ; 75
	i32 285, ; 76
	i32 327, ; 77
	i32 345, ; 78
	i32 142, ; 79
	i32 141, ; 80
	i32 321, ; 81
	i32 53, ; 82
	i32 35, ; 83
	i32 141, ; 84
	i32 245, ; 85
	i32 255, ; 86
	i32 191, ; 87
	i32 212, ; 88
	i32 269, ; 89
	i32 8, ; 90
	i32 14, ; 91
	i32 186, ; 92
	i32 349, ; 93
	i32 297, ; 94
	i32 51, ; 95
	i32 219, ; 96
	i32 280, ; 97
	i32 136, ; 98
	i32 101, ; 99
	i32 262, ; 100
	i32 307, ; 101
	i32 116, ; 102
	i32 246, ; 103
	i32 163, ; 104
	i32 352, ; 105
	i32 220, ; 106
	i32 166, ; 107
	i32 67, ; 108
	i32 202, ; 109
	i32 327, ; 110
	i32 80, ; 111
	i32 175, ; 112
	i32 176, ; 113
	i32 222, ; 114
	i32 101, ; 115
	i32 302, ; 116
	i32 216, ; 117
	i32 117, ; 118
	i32 235, ; 119
	i32 332, ; 120
	i32 314, ; 121
	i32 78, ; 122
	i32 313, ; 123
	i32 114, ; 124
	i32 121, ; 125
	i32 48, ; 126
	i32 229, ; 127
	i32 180, ; 128
	i32 128, ; 129
	i32 278, ; 130
	i32 249, ; 131
	i32 82, ; 132
	i32 110, ; 133
	i32 75, ; 134
	i32 324, ; 135
	i32 205, ; 136
	i32 237, ; 137
	i32 227, ; 138
	i32 53, ; 139
	i32 304, ; 140
	i32 197, ; 141
	i32 69, ; 142
	i32 362, ; 143
	i32 303, ; 144
	i32 196, ; 145
	i32 83, ; 146
	i32 172, ; 147
	i32 347, ; 148
	i32 116, ; 149
	i32 198, ; 150
	i32 156, ; 151
	i32 197, ; 152
	i32 243, ; 153
	i32 167, ; 154
	i32 296, ; 155
	i32 185, ; 156
	i32 270, ; 157
	i32 187, ; 158
	i32 210, ; 159
	i32 32, ; 160
	i32 208, ; 161
	i32 225, ; 162
	i32 122, ; 163
	i32 72, ; 164
	i32 62, ; 165
	i32 161, ; 166
	i32 113, ; 167
	i32 88, ; 168
	i32 223, ; 169
	i32 358, ; 170
	i32 105, ; 171
	i32 18, ; 172
	i32 146, ; 173
	i32 118, ; 174
	i32 58, ; 175
	i32 264, ; 176
	i32 17, ; 177
	i32 52, ; 178
	i32 92, ; 179
	i32 231, ; 180
	i32 355, ; 181
	i32 55, ; 182
	i32 183, ; 183
	i32 129, ; 184
	i32 152, ; 185
	i32 41, ; 186
	i32 192, ; 187
	i32 92, ; 188
	i32 191, ; 189
	i32 308, ; 190
	i32 50, ; 191
	i32 325, ; 192
	i32 360, ; 193
	i32 162, ; 194
	i32 13, ; 195
	i32 282, ; 196
	i32 246, ; 197
	i32 303, ; 198
	i32 36, ; 199
	i32 67, ; 200
	i32 109, ; 201
	i32 359, ; 202
	i32 0, ; 203
	i32 247, ; 204
	i32 99, ; 205
	i32 99, ; 206
	i32 11, ; 207
	i32 189, ; 208
	i32 11, ; 209
	i32 184, ; 210
	i32 289, ; 211
	i32 0, ; 212
	i32 25, ; 213
	i32 128, ; 214
	i32 76, ; 215
	i32 281, ; 216
	i32 109, ; 217
	i32 307, ; 218
	i32 179, ; 219
	i32 305, ; 220
	i32 106, ; 221
	i32 2, ; 222
	i32 26, ; 223
	i32 260, ; 224
	i32 157, ; 225
	i32 351, ; 226
	i32 241, ; 227
	i32 21, ; 228
	i32 354, ; 229
	i32 49, ; 230
	i32 43, ; 231
	i32 126, ; 232
	i32 250, ; 233
	i32 59, ; 234
	i32 119, ; 235
	i32 310, ; 236
	i32 273, ; 237
	i32 259, ; 238
	i32 3, ; 239
	i32 177, ; 240
	i32 279, ; 241
	i32 299, ; 242
	i32 38, ; 243
	i32 124, ; 244
	i32 361, ; 245
	i32 348, ; 246
	i32 299, ; 247
	i32 182, ; 248
	i32 231, ; 249
	i32 348, ; 250
	i32 137, ; 251
	i32 149, ; 252
	i32 85, ; 253
	i32 90, ; 254
	i32 283, ; 255
	i32 363, ; 256
	i32 280, ; 257
	i32 230, ; 258
	i32 336, ; 259
	i32 255, ; 260
	i32 266, ; 261
	i32 311, ; 262
	i32 213, ; 263
	i32 316, ; 264
	i32 281, ; 265
	i32 133, ; 266
	i32 96, ; 267
	i32 3, ; 268
	i32 344, ; 269
	i32 105, ; 270
	i32 347, ; 271
	i32 33, ; 272
	i32 154, ; 273
	i32 158, ; 274
	i32 155, ; 275
	i32 82, ; 276
	i32 185, ; 277
	i32 275, ; 278
	i32 143, ; 279
	i32 87, ; 280
	i32 19, ; 281
	i32 276, ; 282
	i32 239, ; 283
	i32 51, ; 284
	i32 245, ; 285
	i32 351, ; 286
	i32 61, ; 287
	i32 54, ; 288
	i32 4, ; 289
	i32 97, ; 290
	i32 244, ; 291
	i32 17, ; 292
	i32 155, ; 293
	i32 84, ; 294
	i32 237, ; 295
	i32 29, ; 296
	i32 45, ; 297
	i32 64, ; 298
	i32 177, ; 299
	i32 66, ; 300
	i32 342, ; 301
	i32 172, ; 302
	i32 284, ; 303
	i32 1, ; 304
	i32 319, ; 305
	i32 47, ; 306
	i32 24, ; 307
	i32 252, ; 308
	i32 195, ; 309
	i32 183, ; 310
	i32 165, ; 311
	i32 108, ; 312
	i32 12, ; 313
	i32 278, ; 314
	i32 63, ; 315
	i32 27, ; 316
	i32 23, ; 317
	i32 93, ; 318
	i32 168, ; 319
	i32 12, ; 320
	i32 323, ; 321
	i32 228, ; 322
	i32 29, ; 323
	i32 103, ; 324
	i32 14, ; 325
	i32 126, ; 326
	i32 261, ; 327
	i32 293, ; 328
	i32 91, ; 329
	i32 282, ; 330
	i32 173, ; 331
	i32 240, ; 332
	i32 9, ; 333
	i32 86, ; 334
	i32 176, ; 335
	i32 272, ; 336
	i32 305, ; 337
	i32 346, ; 338
	i32 71, ; 339
	i32 168, ; 340
	i32 1, ; 341
	i32 292, ; 342
	i32 5, ; 343
	i32 346, ; 344
	i32 44, ; 345
	i32 27, ; 346
	i32 320, ; 347
	i32 158, ; 348
	i32 295, ; 349
	i32 112, ; 350
	i32 215, ; 351
	i32 356, ; 352
	i32 218, ; 353
	i32 196, ; 354
	i32 121, ; 355
	i32 190, ; 356
	i32 174, ; 357
	i32 310, ; 358
	i32 251, ; 359
	i32 217, ; 360
	i32 159, ; 361
	i32 194, ; 362
	i32 131, ; 363
	i32 315, ; 364
	i32 57, ; 365
	i32 201, ; 366
	i32 138, ; 367
	i32 83, ; 368
	i32 30, ; 369
	i32 262, ; 370
	i32 10, ; 371
	i32 312, ; 372
	i32 171, ; 373
	i32 218, ; 374
	i32 259, ; 375
	i32 150, ; 376
	i32 94, ; 377
	i32 193, ; 378
	i32 272, ; 379
	i32 60, ; 380
	i32 226, ; 381
	i32 157, ; 382
	i32 331, ; 383
	i32 212, ; 384
	i32 64, ; 385
	i32 88, ; 386
	i32 79, ; 387
	i32 47, ; 388
	i32 224, ; 389
	i32 143, ; 390
	i32 328, ; 391
	i32 199, ; 392
	i32 321, ; 393
	i32 266, ; 394
	i32 74, ; 395
	i32 91, ; 396
	i32 318, ; 397
	i32 135, ; 398
	i32 90, ; 399
	i32 304, ; 400
	i32 360, ; 401
	i32 324, ; 402
	i32 263, ; 403
	i32 326, ; 404
	i32 112, ; 405
	i32 42, ; 406
	i32 159, ; 407
	i32 4, ; 408
	i32 103, ; 409
	i32 207, ; 410
	i32 70, ; 411
	i32 192, ; 412
	i32 60, ; 413
	i32 39, ; 414
	i32 253, ; 415
	i32 188, ; 416
	i32 153, ; 417
	i32 56, ; 418
	i32 34, ; 419
	i32 211, ; 420
	i32 226, ; 421
	i32 250, ; 422
	i32 21, ; 423
	i32 163, ; 424
	i32 229, ; 425
	i32 206, ; 426
	i32 316, ; 427
	i32 337, ; 428
	i32 314, ; 429
	i32 309, ; 430
	i32 140, ; 431
	i32 181, ; 432
	i32 340, ; 433
	i32 213, ; 434
	i32 89, ; 435
	i32 147, ; 436
	i32 265, ; 437
	i32 235, ; 438
	i32 162, ; 439
	i32 294, ; 440
	i32 193, ; 441
	i32 6, ; 442
	i32 169, ; 443
	i32 31, ; 444
	i32 107, ; 445
	i32 275, ; 446
	i32 238, ; 447
	i32 338, ; 448
	i32 309, ; 449
	i32 210, ; 450
	i32 248, ; 451
	i32 302, ; 452
	i32 167, ; 453
	i32 276, ; 454
	i32 140, ; 455
	i32 334, ; 456
	i32 59, ; 457
	i32 144, ; 458
	i32 81, ; 459
	i32 74, ; 460
	i32 208, ; 461
	i32 209, ; 462
	i32 130, ; 463
	i32 25, ; 464
	i32 7, ; 465
	i32 93, ; 466
	i32 306, ; 467
	i32 137, ; 468
	i32 242, ; 469
	i32 219, ; 470
	i32 113, ; 471
	i32 9, ; 472
	i32 234, ; 473
	i32 238, ; 474
	i32 104, ; 475
	i32 19, ; 476
	i32 216, ; 477
	i32 274, ; 478
	i32 182, ; 479
	i32 288, ; 480
	i32 363, ; 481
	i32 268, ; 482
	i32 188, ; 483
	i32 33, ; 484
	i32 256, ; 485
	i32 46, ; 486
	i32 339, ; 487
	i32 30, ; 488
	i32 257, ; 489
	i32 57, ; 490
	i32 134, ; 491
	i32 114, ; 492
	i32 311, ; 493
	i32 352, ; 494
	i32 322, ; 495
	i32 55, ; 496
	i32 214, ; 497
	i32 6, ; 498
	i32 77, ; 499
	i32 236, ; 500
	i32 267, ; 501
	i32 186, ; 502
	i32 111, ; 503
	i32 271, ; 504
	i32 240, ; 505
	i32 102, ; 506
	i32 326, ; 507
	i32 340, ; 508
	i32 170, ; 509
	i32 115, ; 510
	i32 334, ; 511
	i32 306, ; 512
	i32 261, ; 513
	i32 76, ; 514
	i32 317, ; 515
	i32 359, ; 516
	i32 85, ; 517
	i32 319, ; 518
	i32 354, ; 519
	i32 254, ; 520
	i32 355, ; 521
	i32 338, ; 522
	i32 205, ; 523
	i32 296, ; 524
	i32 160, ; 525
	i32 2, ; 526
	i32 267, ; 527
	i32 24, ; 528
	i32 247, ; 529
	i32 32, ; 530
	i32 117, ; 531
	i32 37, ; 532
	i32 16, ; 533
	i32 333, ; 534
	i32 52, ; 535
	i32 336, ; 536
	i32 320, ; 537
	i32 20, ; 538
	i32 241, ; 539
	i32 123, ; 540
	i32 154, ; 541
	i32 204, ; 542
	i32 274, ; 543
	i32 179, ; 544
	i32 131, ; 545
	i32 187, ; 546
	i32 328, ; 547
	i32 256, ; 548
	i32 148, ; 549
	i32 190, ; 550
	i32 243, ; 551
	i32 120, ; 552
	i32 28, ; 553
	i32 132, ; 554
	i32 100, ; 555
	i32 134, ; 556
	i32 294, ; 557
	i32 153, ; 558
	i32 97, ; 559
	i32 125, ; 560
	i32 244, ; 561
	i32 69, ; 562
	i32 72, ; 563
	i32 349, ; 564
	i32 279, ; 565
	i32 297, ; 566
	i32 330, ; 567
	i32 136, ; 568
	i32 124, ; 569
	i32 71, ; 570
	i32 111, ; 571
	i32 289, ; 572
	i32 202, ; 573
	i32 152, ; 574
	i32 341, ; 575
	i32 357, ; 576
	i32 317, ; 577
	i32 118, ; 578
	i32 265, ; 579
	i32 175, ; 580
	i32 178, ; 581
	i32 358, ; 582
	i32 325, ; 583
	i32 127, ; 584
	i32 133, ; 585
	i32 203, ; 586
	i32 77, ; 587
	i32 46, ; 588
	i32 268, ; 589
	i32 73, ; 590
	i32 63, ; 591
	i32 98, ; 592
	i32 84, ; 593
	i32 342, ; 594
	i32 43, ; 595
	i32 61, ; 596
	i32 295, ; 597
	i32 198, ; 598
	i32 37, ; 599
	i32 40, ; 600
	i32 258, ; 601
	i32 323, ; 602
	i32 160, ; 603
	i32 98, ; 604
	i32 263, ; 605
	i32 203, ; 606
	i32 184, ; 607
	i32 206, ; 608
	i32 135, ; 609
	i32 20, ; 610
	i32 65, ; 611
	i32 329, ; 612
	i32 125, ; 613
	i32 75, ; 614
	i32 287, ; 615
	i32 180, ; 616
	i32 164, ; 617
	i32 204, ; 618
	i32 174, ; 619
	i32 156, ; 620
	i32 329, ; 621
	i32 5, ; 622
	i32 337, ; 623
	i32 49, ; 624
	i32 301, ; 625
	i32 330, ; 626
	i32 144, ; 627
	i32 201, ; 628
	i32 139, ; 629
	i32 100, ; 630
	i32 223, ; 631
	i32 123, ; 632
	i32 120, ; 633
	i32 142, ; 634
	i32 39, ; 635
	i32 68, ; 636
	i32 41, ; 637
	i32 164, ; 638
	i32 73, ; 639
	i32 343, ; 640
	i32 165, ; 641
	i32 211, ; 642
	i32 127, ; 643
	i32 273, ; 644
	i32 322, ; 645
	i32 68, ; 646
	i32 169, ; 647
	i32 286, ; 648
	i32 260, ; 649
	i32 228, ; 650
	i32 293, ; 651
	i32 151, ; 652
	i32 45, ; 653
	i32 108, ; 654
	i32 232, ; 655
	i32 48, ; 656
	i32 96, ; 657
	i32 31, ; 658
	i32 23, ; 659
	i32 166, ; 660
	i32 22, ; 661
	i32 138, ; 662
	i32 78, ; 663
	i32 350, ; 664
	i32 54, ; 665
	i32 286, ; 666
	i32 291, ; 667
	i32 10, ; 668
	i32 249, ; 669
	i32 290, ; 670
	i32 277, ; 671
	i32 200, ; 672
	i32 16, ; 673
	i32 181, ; 674
	i32 357, ; 675
	i32 139, ; 676
	i32 220, ; 677
	i32 13, ; 678
	i32 15, ; 679
	i32 122, ; 680
	i32 209, ; 681
	i32 87, ; 682
	i32 149, ; 683
	i32 22, ; 684
	i32 34, ; 685
	i32 79, ; 686
	i32 335, ; 687
	i32 315, ; 688
	i32 350, ; 689
	i32 147, ; 690
	i32 80, ; 691
	i32 333, ; 692
	i32 178, ; 693
	i32 362, ; 694
	i32 242, ; 695
	i32 221, ; 696
	i32 345, ; 697
	i32 42, ; 698
	i32 26, ; 699
	i32 356, ; 700
	i32 288, ; 701
	i32 285, ; 702
	i32 107, ; 703
	i32 110, ; 704
	i32 217, ; 705
	i32 7, ; 706
	i32 318, ; 707
	i32 44, ; 708
	i32 221, ; 709
	i32 161, ; 710
	i32 195, ; 711
	i32 148, ; 712
	i32 344, ; 713
	i32 254, ; 714
	i32 290, ; 715
	i32 38, ; 716
	i32 15, ; 717
	i32 239, ; 718
	i32 146, ; 719
	i32 8, ; 720
	i32 271, ; 721
	i32 292, ; 722
	i32 130, ; 723
	i32 339, ; 724
	i32 233, ; 725
	i32 308, ; 726
	i32 94 ; 727
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

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
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ 82d8938cf80f6d5fa6c28529ddfbdb753d805ab4"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
