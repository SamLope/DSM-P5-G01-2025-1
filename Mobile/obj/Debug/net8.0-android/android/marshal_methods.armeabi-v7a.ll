; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [318 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [630 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 67
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 66
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 107
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 235
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 269
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 47
	i32 39485524, ; 6: System.Net.WebSockets.dll => 0x25a8054 => 79
	i32 42639949, ; 7: System.Threading.Thread => 0x28aa24d => 144
	i32 66541672, ; 8: System.Diagnostics.StackTrace => 0x3f75868 => 29
	i32 67008169, ; 9: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 310
	i32 68219467, ; 10: System.Security.Cryptography.Primitives => 0x410f24b => 123
	i32 72070932, ; 11: Microsoft.Maui.Graphics.dll => 0x44bb714 => 192
	i32 82292897, ; 12: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 101
	i32 98325684, ; 13: Microsoft.Extensions.Diagnostics.Abstractions => 0x5dc54b4 => 179
	i32 101534019, ; 14: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 253
	i32 117431740, ; 15: System.Runtime.InteropServices => 0x6ffddbc => 106
	i32 120558881, ; 16: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 253
	i32 122350210, ; 17: System.Threading.Channels.dll => 0x74aea82 => 138
	i32 134690465, ; 18: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 273
	i32 142721839, ; 19: System.Net.WebHeaderCollection => 0x881c32f => 76
	i32 149972175, ; 20: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 123
	i32 159306688, ; 21: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 22: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 209
	i32 176265551, ; 23: System.ServiceProcess => 0xa81994f => 131
	i32 182336117, ; 24: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 255
	i32 184328833, ; 25: System.ValueTuple.dll => 0xafca281 => 150
	i32 195452805, ; 26: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 307
	i32 199333315, ; 27: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 308
	i32 205061960, ; 28: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 29: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 207
	i32 220171995, ; 30: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 221958352, ; 31: Microsoft.Extensions.Diagnostics.dll => 0xd3ad0d0 => 178
	i32 230216969, ; 32: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 229
	i32 230752869, ; 33: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 34: System.Linq.Parallel => 0xdcb05c4 => 58
	i32 231814094, ; 35: System.Globalization => 0xdd133ce => 41
	i32 246610117, ; 36: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 90
	i32 261689757, ; 37: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 212
	i32 276479776, ; 38: System.Threading.Timer.dll => 0x107abf20 => 146
	i32 278686392, ; 39: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 231
	i32 280482487, ; 40: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 228
	i32 280992041, ; 41: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 279
	i32 291076382, ; 42: System.IO.Pipes.AccessControl.dll => 0x1159791e => 53
	i32 291275502, ; 43: Microsoft.Extensions.Http.dll => 0x115c82ee => 180
	i32 298918909, ; 44: System.Net.Ping.dll => 0x11d123fd => 68
	i32 317674968, ; 45: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 307
	i32 318968648, ; 46: Xamarin.AndroidX.Activity.dll => 0x13031348 => 198
	i32 321597661, ; 47: System.Numerics => 0x132b30dd => 82
	i32 336156722, ; 48: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 292
	i32 342366114, ; 49: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 230
	i32 356389973, ; 50: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 291
	i32 360082299, ; 51: System.ServiceModel.Web => 0x15766b7b => 130
	i32 367780167, ; 52: System.IO.Pipes => 0x15ebe147 => 54
	i32 374914964, ; 53: System.Transactions.Local => 0x1658bf94 => 148
	i32 375677976, ; 54: System.Net.ServicePoint.dll => 0x16646418 => 73
	i32 379916513, ; 55: System.Threading.Thread.dll => 0x16a510e1 => 144
	i32 385762202, ; 56: System.Memory.dll => 0x16fe439a => 61
	i32 392610295, ; 57: System.Threading.ThreadPool.dll => 0x1766c1f7 => 145
	i32 395744057, ; 58: _Microsoft.Android.Resource.Designer => 0x17969339 => 314
	i32 403441872, ; 59: WindowsBase => 0x180c08d0 => 164
	i32 435591531, ; 60: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 303
	i32 441335492, ; 61: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 213
	i32 442565967, ; 62: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 63: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 226
	i32 451504562, ; 64: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 124
	i32 456227837, ; 65: System.Web.HttpUtility.dll => 0x1b317bfd => 151
	i32 459347974, ; 66: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 112
	i32 465846621, ; 67: mscorlib => 0x1bc4415d => 165
	i32 469710990, ; 68: System.dll => 0x1bff388e => 163
	i32 476646585, ; 69: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 228
	i32 486930444, ; 70: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 241
	i32 498788369, ; 71: System.ObjectModel => 0x1dbae811 => 83
	i32 500358224, ; 72: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 290
	i32 503918385, ; 73: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 284
	i32 513247710, ; 74: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 186
	i32 526420162, ; 75: System.Transactions.dll => 0x1f6088c2 => 149
	i32 527452488, ; 76: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 273
	i32 530272170, ; 77: System.Linq.Queryable => 0x1f9b4faa => 59
	i32 539058512, ; 78: Microsoft.Extensions.Logging => 0x20216150 => 181
	i32 540030774, ; 79: System.IO.FileSystem.dll => 0x20303736 => 50
	i32 545304856, ; 80: System.Runtime.Extensions => 0x2080b118 => 102
	i32 546455878, ; 81: System.Runtime.Serialization.Xml => 0x20924146 => 113
	i32 549171840, ; 82: System.Globalization.Calendars => 0x20bbb280 => 39
	i32 557405415, ; 83: Jsr305Binding => 0x213954e7 => 266
	i32 569601784, ; 84: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 264
	i32 577335427, ; 85: System.Security.Cryptography.Cng => 0x22697083 => 119
	i32 592146354, ; 86: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 298
	i32 601371474, ; 87: System.IO.IsolatedStorage.dll => 0x23d83352 => 51
	i32 605376203, ; 88: System.IO.Compression.FileSystem => 0x24154ecb => 43
	i32 613668793, ; 89: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 118
	i32 627609679, ; 90: Xamarin.AndroidX.CustomView => 0x2568904f => 218
	i32 627931235, ; 91: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 296
	i32 639843206, ; 92: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 224
	i32 643868501, ; 93: System.Net => 0x2660a755 => 80
	i32 662205335, ; 94: System.Text.Encodings.Web.dll => 0x27787397 => 135
	i32 663517072, ; 95: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 260
	i32 666292255, ; 96: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 205
	i32 672442732, ; 97: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 98: System.Net.Security => 0x28bdabca => 72
	i32 688181140, ; 99: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 278
	i32 690569205, ; 100: System.Xml.Linq.dll => 0x29293ff5 => 154
	i32 691348768, ; 101: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 275
	i32 693804605, ; 102: System.Windows => 0x295a9e3d => 153
	i32 699345723, ; 103: System.Reflection.Emit => 0x29af2b3b => 91
	i32 700284507, ; 104: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 270
	i32 700358131, ; 105: System.IO.Compression.ZipFile => 0x29be9df3 => 44
	i32 706645707, ; 106: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 293
	i32 709557578, ; 107: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 281
	i32 720511267, ; 108: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 274
	i32 722857257, ; 109: System.Runtime.Loader.dll => 0x2b15ed29 => 108
	i32 731701662, ; 110: Microsoft.Extensions.Options.ConfigurationExtensions => 0x2b9ce19e => 185
	i32 735137430, ; 111: System.Security.SecureString.dll => 0x2bd14e96 => 128
	i32 752232764, ; 112: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 113: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 195
	i32 759454413, ; 114: System.Net.Requests => 0x2d445acd => 71
	i32 762598435, ; 115: System.IO.Pipes.dll => 0x2d745423 => 54
	i32 775507847, ; 116: System.IO.Compression => 0x2e394f87 => 45
	i32 777317022, ; 117: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 302
	i32 789151979, ; 118: Microsoft.Extensions.Options => 0x2f0980eb => 184
	i32 790371945, ; 119: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 219
	i32 804715423, ; 120: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 121: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 233
	i32 823281589, ; 122: System.Private.Uri.dll => 0x311247b5 => 85
	i32 830298997, ; 123: System.IO.Compression.Brotli => 0x317d5b75 => 42
	i32 832635846, ; 124: System.Xml.XPath.dll => 0x31a103c6 => 159
	i32 834051424, ; 125: System.Net.Quic => 0x31b69d60 => 70
	i32 843511501, ; 126: Xamarin.AndroidX.Print => 0x3246f6cd => 246
	i32 873119928, ; 127: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 128: System.Globalization.dll => 0x34505120 => 41
	i32 878954865, ; 129: System.Net.Http.Json => 0x3463c971 => 62
	i32 904024072, ; 130: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 131: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 52
	i32 926902833, ; 132: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 305
	i32 928116545, ; 133: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 269
	i32 952186615, ; 134: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 104
	i32 956575887, ; 135: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 274
	i32 966729478, ; 136: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 267
	i32 967690846, ; 137: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 230
	i32 975236339, ; 138: System.Diagnostics.Tracing => 0x3a20ecf3 => 33
	i32 975874589, ; 139: System.Xml.XDocument => 0x3a2aaa1d => 157
	i32 986514023, ; 140: System.Private.DataContractSerialization.dll => 0x3acd0267 => 84
	i32 987214855, ; 141: System.Diagnostics.Tools => 0x3ad7b407 => 31
	i32 992768348, ; 142: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 143: System.IO.FileSystem => 0x3b45fb35 => 50
	i32 1001831731, ; 144: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 55
	i32 1012816738, ; 145: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 250
	i32 1019214401, ; 146: System.Drawing => 0x3cbffa41 => 35
	i32 1028951442, ; 147: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 177
	i32 1029334545, ; 148: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 280
	i32 1031528504, ; 149: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 268
	i32 1035644815, ; 150: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 203
	i32 1036536393, ; 151: System.Drawing.Primitives.dll => 0x3dc84a49 => 34
	i32 1044663988, ; 152: System.Linq.Expressions.dll => 0x3e444eb4 => 57
	i32 1048992957, ; 153: Microsoft.Extensions.Diagnostics.Abstractions.dll => 0x3e865cbd => 179
	i32 1052210849, ; 154: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 237
	i32 1067306892, ; 155: GoogleGson => 0x3f9dcf8c => 172
	i32 1082857460, ; 156: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 157: Xamarin.Kotlin.StdLib => 0x409e66d8 => 271
	i32 1098259244, ; 158: System => 0x41761b2c => 163
	i32 1118262833, ; 159: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 293
	i32 1121599056, ; 160: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 236
	i32 1127624469, ; 161: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 183
	i32 1149092582, ; 162: Xamarin.AndroidX.Window => 0x447dc2e6 => 263
	i32 1168523401, ; 163: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 299
	i32 1170634674, ; 164: System.Web.dll => 0x45c677b2 => 152
	i32 1175144683, ; 165: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 259
	i32 1178241025, ; 166: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 244
	i32 1203215381, ; 167: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 297
	i32 1204270330, ; 168: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 205
	i32 1208641965, ; 169: System.Diagnostics.Process => 0x480a69ad => 28
	i32 1219128291, ; 170: System.IO.IsolatedStorage => 0x48aa6be3 => 51
	i32 1234928153, ; 171: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 295
	i32 1243150071, ; 172: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 264
	i32 1253011324, ; 173: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 174: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 279
	i32 1264511973, ; 175: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 254
	i32 1267360935, ; 176: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 258
	i32 1273260888, ; 177: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 210
	i32 1275534314, ; 178: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 275
	i32 1278448581, ; 179: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 202
	i32 1293217323, ; 180: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 221
	i32 1309188875, ; 181: System.Private.DataContractSerialization => 0x4e08a30b => 84
	i32 1322716291, ; 182: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 263
	i32 1324164729, ; 183: System.Linq => 0x4eed2679 => 60
	i32 1335329327, ; 184: System.Runtime.Serialization.Json.dll => 0x4f97822f => 111
	i32 1364015309, ; 185: System.IO => 0x514d38cd => 56
	i32 1373134921, ; 186: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 309
	i32 1376866003, ; 187: Xamarin.AndroidX.SavedState => 0x52114ed3 => 250
	i32 1379779777, ; 188: System.Resources.ResourceManager => 0x523dc4c1 => 98
	i32 1402170036, ; 189: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 190: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 214
	i32 1408764838, ; 191: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 110
	i32 1411638395, ; 192: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 100
	i32 1422545099, ; 193: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 101
	i32 1430672901, ; 194: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 277
	i32 1434145427, ; 195: System.Runtime.Handles => 0x557b5293 => 103
	i32 1435222561, ; 196: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 267
	i32 1439761251, ; 197: System.Net.Quic.dll => 0x55d10363 => 70
	i32 1452070440, ; 198: System.Formats.Asn1.dll => 0x568cd628 => 37
	i32 1453312822, ; 199: System.Diagnostics.Tools.dll => 0x569fcb36 => 31
	i32 1457743152, ; 200: System.Runtime.Extensions.dll => 0x56e36530 => 102
	i32 1458022317, ; 201: System.Net.Security.dll => 0x56e7a7ad => 72
	i32 1461004990, ; 202: es\Microsoft.Maui.Controls.resources => 0x57152abe => 283
	i32 1461234159, ; 203: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 204: System.Security.Cryptography.OpenSsl => 0x57201017 => 122
	i32 1462112819, ; 205: System.IO.Compression.dll => 0x57261233 => 45
	i32 1469204771, ; 206: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 204
	i32 1470490898, ; 207: Microsoft.Extensions.Primitives => 0x57a5e912 => 186
	i32 1479771757, ; 208: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 209: System.IO.Compression.Brotli.dll => 0x583e844f => 42
	i32 1487239319, ; 210: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 211: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 251
	i32 1493001747, ; 212: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 287
	i32 1505131794, ; 213: Microsoft.Extensions.Http => 0x59b67d12 => 180
	i32 1514721132, ; 214: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 282
	i32 1536373174, ; 215: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 30
	i32 1543031311, ; 216: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 137
	i32 1543355203, ; 217: System.Reflection.Emit.dll => 0x5bfdbb43 => 91
	i32 1550322496, ; 218: System.Reflection.Extensions.dll => 0x5c680b40 => 92
	i32 1551623176, ; 219: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 302
	i32 1565862583, ; 220: System.IO.FileSystem.Primitives => 0x5d552ab7 => 48
	i32 1566207040, ; 221: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 140
	i32 1573704789, ; 222: System.Runtime.Serialization.Json => 0x5dccd455 => 111
	i32 1580037396, ; 223: System.Threading.Overlapped => 0x5e2d7514 => 139
	i32 1582372066, ; 224: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 220
	i32 1592978981, ; 225: System.Runtime.Serialization.dll => 0x5ef2ee25 => 114
	i32 1597949149, ; 226: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 268
	i32 1601112923, ; 227: System.Xml.Serialization => 0x5f6f0b5b => 156
	i32 1603525486, ; 228: Microsoft.Maui.Controls.HotReload.Forms.dll => 0x5f93db6e => 311
	i32 1604827217, ; 229: System.Net.WebClient => 0x5fa7b851 => 75
	i32 1618516317, ; 230: System.Net.WebSockets.Client.dll => 0x6078995d => 78
	i32 1622152042, ; 231: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 240
	i32 1622358360, ; 232: System.Dynamic.Runtime => 0x60b33958 => 36
	i32 1624863272, ; 233: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 262
	i32 1635184631, ; 234: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 224
	i32 1636350590, ; 235: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 217
	i32 1639515021, ; 236: System.Net.Http.dll => 0x61b9038d => 63
	i32 1639986890, ; 237: System.Text.RegularExpressions => 0x61c036ca => 137
	i32 1641389582, ; 238: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 239: System.Runtime => 0x62c6282e => 115
	i32 1658241508, ; 240: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 256
	i32 1658251792, ; 241: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 265
	i32 1670060433, ; 242: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 212
	i32 1675553242, ; 243: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 47
	i32 1677501392, ; 244: System.Net.Primitives.dll => 0x63fca3d0 => 69
	i32 1678508291, ; 245: System.Net.WebSockets => 0x640c0103 => 79
	i32 1679769178, ; 246: System.Security.Cryptography => 0x641f3e5a => 125
	i32 1691477237, ; 247: System.Reflection.Metadata => 0x64d1e4f5 => 93
	i32 1696967625, ; 248: System.Security.Cryptography.Csp => 0x6525abc9 => 120
	i32 1698840827, ; 249: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 272
	i32 1701541528, ; 250: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 251: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 233
	i32 1726116996, ; 252: System.Reflection.dll => 0x66e27484 => 96
	i32 1728033016, ; 253: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 27
	i32 1729485958, ; 254: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 208
	i32 1736233607, ; 255: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 300
	i32 1743415430, ; 256: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 278
	i32 1744735666, ; 257: System.Transactions.Local.dll => 0x67fe8db2 => 148
	i32 1746316138, ; 258: Mono.Android.Export => 0x6816ab6a => 168
	i32 1750313021, ; 259: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 260: System.Resources.Reader.dll => 0x68cc9d1e => 97
	i32 1763938596, ; 261: System.Diagnostics.TraceSource.dll => 0x69239124 => 32
	i32 1765942094, ; 262: System.Reflection.Extensions => 0x6942234e => 92
	i32 1766324549, ; 263: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 255
	i32 1770582343, ; 264: Microsoft.Extensions.Logging.dll => 0x6988f147 => 181
	i32 1776026572, ; 265: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 266: System.Globalization.Extensions.dll => 0x69ec0683 => 40
	i32 1780572499, ; 267: Mono.Android.Runtime.dll => 0x6a216153 => 169
	i32 1782862114, ; 268: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 294
	i32 1788241197, ; 269: Xamarin.AndroidX.Fragment => 0x6a96652d => 226
	i32 1793755602, ; 270: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 286
	i32 1808609942, ; 271: Xamarin.AndroidX.Loader => 0x6bcd3296 => 240
	i32 1813058853, ; 272: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 271
	i32 1813201214, ; 273: Xamarin.Google.Android.Material => 0x6c13413e => 265
	i32 1818569960, ; 274: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 245
	i32 1818787751, ; 275: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 276: System.Text.Encoding.Extensions => 0x6cbab720 => 133
	i32 1824722060, ; 277: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 110
	i32 1827303595, ; 278: Microsoft.VisualStudio.DesignTools.TapContract => 0x6cea70ab => 313
	i32 1828688058, ; 279: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 182
	i32 1842015223, ; 280: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 306
	i32 1847515442, ; 281: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 195
	i32 1853025655, ; 282: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 303
	i32 1858542181, ; 283: System.Linq.Expressions => 0x6ec71a65 => 57
	i32 1870277092, ; 284: System.Reflection.Primitives => 0x6f7a29e4 => 94
	i32 1875935024, ; 285: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 285
	i32 1879696579, ; 286: System.Formats.Tar.dll => 0x7009e4c3 => 38
	i32 1885316902, ; 287: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 206
	i32 1885918049, ; 288: Microsoft.VisualStudio.DesignTools.TapContract.dll => 0x7068d361 => 313
	i32 1888955245, ; 289: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 290: System.Reflection.Metadata.dll => 0x70a66bdd => 93
	i32 1898237753, ; 291: System.Reflection.DispatchProxy => 0x7124cf39 => 88
	i32 1900610850, ; 292: System.Resources.ResourceManager.dll => 0x71490522 => 98
	i32 1910275211, ; 293: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 294: System.Private.Xml.Linq => 0x739bd4a8 => 86
	i32 1956758971, ; 295: System.Resources.Writer => 0x74a1c5bb => 99
	i32 1961813231, ; 296: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 252
	i32 1968388702, ; 297: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 173
	i32 1983156543, ; 298: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 272
	i32 1985761444, ; 299: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 197
	i32 2003115576, ; 300: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 282
	i32 2011961780, ; 301: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 302: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 237
	i32 2025202353, ; 303: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 277
	i32 2031763787, ; 304: Xamarin.Android.Glide => 0x791a414b => 194
	i32 2045470958, ; 305: System.Private.Xml => 0x79eb68ee => 87
	i32 2048278909, ; 306: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 175
	i32 2055257422, ; 307: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 232
	i32 2060060697, ; 308: System.Windows.dll => 0x7aca0819 => 153
	i32 2066184531, ; 309: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 281
	i32 2070888862, ; 310: System.Diagnostics.TraceSource => 0x7b6f419e => 32
	i32 2079903147, ; 311: System.Runtime.dll => 0x7bf8cdab => 115
	i32 2090596640, ; 312: System.Numerics.Vectors => 0x7c9bf920 => 81
	i32 2127167465, ; 313: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 314: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 315: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 161
	i32 2146852085, ; 316: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 317: Microsoft.Maui => 0x80bd55ad => 190
	i32 2169148018, ; 318: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 289
	i32 2181898931, ; 319: Microsoft.Extensions.Options.dll => 0x820d22b3 => 184
	i32 2192057212, ; 320: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 182
	i32 2193016926, ; 321: System.ObjectModel.dll => 0x82b6c85e => 83
	i32 2201107256, ; 322: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 276
	i32 2201231467, ; 323: System.Net.Http => 0x8334206b => 63
	i32 2207618523, ; 324: it\Microsoft.Maui.Controls.resources => 0x839595db => 291
	i32 2217644978, ; 325: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 259
	i32 2222056684, ; 326: System.Threading.Tasks.Parallel => 0x8471e4ec => 142
	i32 2244775296, ; 327: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 241
	i32 2252106437, ; 328: System.Xml.Serialization.dll => 0x863c6ac5 => 156
	i32 2256313426, ; 329: System.Globalization.Extensions => 0x867c9c52 => 40
	i32 2265110946, ; 330: System.Security.AccessControl.dll => 0x8702d9a2 => 116
	i32 2266799131, ; 331: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 174
	i32 2267999099, ; 332: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 196
	i32 2270573516, ; 333: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 285
	i32 2279755925, ; 334: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 248
	i32 2293034957, ; 335: System.ServiceModel.Web.dll => 0x88acefcd => 130
	i32 2295906218, ; 336: System.Net.Sockets => 0x88d8bfaa => 74
	i32 2298471582, ; 337: System.Net.Mail => 0x88ffe49e => 65
	i32 2303942373, ; 338: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 295
	i32 2305521784, ; 339: System.Private.CoreLib.dll => 0x896b7878 => 171
	i32 2315684594, ; 340: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 200
	i32 2320631194, ; 341: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 142
	i32 2340441535, ; 342: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 105
	i32 2344264397, ; 343: System.ValueTuple => 0x8bbaa2cd => 150
	i32 2353062107, ; 344: System.Net.Primitives => 0x8c40e0db => 69
	i32 2368005991, ; 345: System.Xml.ReaderWriter.dll => 0x8d24e767 => 155
	i32 2371007202, ; 346: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 173
	i32 2378619854, ; 347: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 120
	i32 2383496789, ; 348: System.Security.Principal.Windows.dll => 0x8e114655 => 126
	i32 2395872292, ; 349: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 290
	i32 2401565422, ; 350: System.Web.HttpUtility => 0x8f24faee => 151
	i32 2403452196, ; 351: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 223
	i32 2409983638, ; 352: Microsoft.VisualStudio.DesignTools.MobileTapContracts.dll => 0x8fa56e96 => 312
	i32 2421380589, ; 353: System.Threading.Tasks.Dataflow => 0x905355ed => 140
	i32 2423080555, ; 354: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 210
	i32 2427813419, ; 355: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 287
	i32 2435356389, ; 356: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 357: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 358: System.Text.Encoding.dll => 0x924edee6 => 134
	i32 2458678730, ; 359: System.Net.Sockets.dll => 0x928c75ca => 74
	i32 2459001652, ; 360: System.Linq.Parallel.dll => 0x92916334 => 58
	i32 2465532216, ; 361: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 213
	i32 2471841756, ; 362: netstandard.dll => 0x93554fdc => 166
	i32 2475788418, ; 363: Java.Interop.dll => 0x93918882 => 167
	i32 2480646305, ; 364: Microsoft.Maui.Controls => 0x93dba8a1 => 188
	i32 2483903535, ; 365: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 366: System.Net.ServicePoint => 0x94147f61 => 73
	i32 2490993605, ; 367: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 368: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 369: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 235
	i32 2522472828, ; 370: Xamarin.Android.Glide.dll => 0x9659e17c => 194
	i32 2538310050, ; 371: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 90
	i32 2550873716, ; 372: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 288
	i32 2562349572, ; 373: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 374: System.Text.Encodings.Web => 0x9930ee42 => 135
	i32 2581783588, ; 375: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 236
	i32 2581819634, ; 376: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 258
	i32 2585220780, ; 377: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 133
	i32 2585805581, ; 378: System.Net.Ping => 0x9a20430d => 68
	i32 2589602615, ; 379: System.Threading.ThreadPool => 0x9a5a3337 => 145
	i32 2593496499, ; 380: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 297
	i32 2605712449, ; 381: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 276
	i32 2615233544, ; 382: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 227
	i32 2616218305, ; 383: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 183
	i32 2617129537, ; 384: System.Private.Xml.dll => 0x9bfe3a41 => 87
	i32 2618712057, ; 385: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 95
	i32 2620871830, ; 386: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 217
	i32 2624644809, ; 387: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 222
	i32 2626831493, ; 388: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 292
	i32 2627185994, ; 389: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 30
	i32 2629843544, ; 390: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 44
	i32 2633051222, ; 391: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 231
	i32 2663391936, ; 392: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 196
	i32 2663698177, ; 393: System.Runtime.Loader => 0x9ec4cf01 => 108
	i32 2664396074, ; 394: System.Xml.XDocument.dll => 0x9ecf752a => 157
	i32 2665622720, ; 395: System.Drawing.Primitives => 0x9ee22cc0 => 34
	i32 2676780864, ; 396: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 397: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 113
	i32 2693849962, ; 398: System.IO.dll => 0xa090e36a => 56
	i32 2701096212, ; 399: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 256
	i32 2715334215, ; 400: System.Threading.Tasks.dll => 0xa1d8b647 => 143
	i32 2717744543, ; 401: System.Security.Claims => 0xa1fd7d9f => 117
	i32 2719963679, ; 402: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 119
	i32 2724373263, ; 403: System.Runtime.Numerics.dll => 0xa262a30f => 109
	i32 2732626843, ; 404: Xamarin.AndroidX.Activity => 0xa2e0939b => 198
	i32 2735172069, ; 405: System.Threading.Channels => 0xa30769e5 => 138
	i32 2737747696, ; 406: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 204
	i32 2740948882, ; 407: System.IO.Pipes.AccessControl => 0xa35f8f92 => 53
	i32 2748088231, ; 408: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 104
	i32 2752995522, ; 409: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 298
	i32 2758225723, ; 410: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 189
	i32 2764765095, ; 411: Microsoft.Maui.dll => 0xa4caf7a7 => 190
	i32 2765824710, ; 412: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 132
	i32 2770495804, ; 413: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 270
	i32 2778768386, ; 414: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 261
	i32 2779977773, ; 415: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 249
	i32 2785988530, ; 416: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 304
	i32 2788224221, ; 417: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 227
	i32 2801831435, ; 418: Microsoft.Maui.Graphics => 0xa7008e0b => 192
	i32 2803228030, ; 419: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 158
	i32 2806116107, ; 420: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 283
	i32 2810250172, ; 421: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 214
	i32 2819470561, ; 422: System.Xml.dll => 0xa80db4e1 => 162
	i32 2821205001, ; 423: System.ServiceProcess.dll => 0xa8282c09 => 131
	i32 2821294376, ; 424: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 249
	i32 2824502124, ; 425: System.Xml.XmlDocument => 0xa85a7b6c => 160
	i32 2831556043, ; 426: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 296
	i32 2838993487, ; 427: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 238
	i32 2849599387, ; 428: System.Threading.Overlapped.dll => 0xa9d96f9b => 139
	i32 2853208004, ; 429: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 261
	i32 2855708567, ; 430: Xamarin.AndroidX.Transition => 0xaa36a797 => 257
	i32 2861098320, ; 431: Mono.Android.Export.dll => 0xaa88e550 => 168
	i32 2861189240, ; 432: Microsoft.Maui.Essentials => 0xaa8a4878 => 191
	i32 2870099610, ; 433: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 199
	i32 2875164099, ; 434: Jsr305Binding.dll => 0xab5f85c3 => 266
	i32 2875220617, ; 435: System.Globalization.Calendars.dll => 0xab606289 => 39
	i32 2884993177, ; 436: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 225
	i32 2887636118, ; 437: System.Net.dll => 0xac1dd496 => 80
	i32 2899753641, ; 438: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 55
	i32 2900621748, ; 439: System.Dynamic.Runtime.dll => 0xace3f9b4 => 36
	i32 2901442782, ; 440: System.Reflection => 0xacf080de => 96
	i32 2905242038, ; 441: mscorlib.dll => 0xad2a79b6 => 165
	i32 2909740682, ; 442: System.Private.CoreLib => 0xad6f1e8a => 171
	i32 2916838712, ; 443: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 262
	i32 2919462931, ; 444: System.Numerics.Vectors.dll => 0xae037813 => 81
	i32 2921128767, ; 445: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 201
	i32 2936416060, ; 446: System.Resources.Reader => 0xaf06273c => 97
	i32 2940926066, ; 447: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 29
	i32 2942453041, ; 448: System.Xml.XPath.XDocument => 0xaf624531 => 158
	i32 2959614098, ; 449: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 450: System.Security.Principal.Windows => 0xb0ed41f3 => 126
	i32 2971004615, ; 451: Microsoft.Extensions.Options.ConfigurationExtensions.dll => 0xb115eec7 => 185
	i32 2972252294, ; 452: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 118
	i32 2978675010, ; 453: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 221
	i32 2987532451, ; 454: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 252
	i32 2996846495, ; 455: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 234
	i32 3016983068, ; 456: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 254
	i32 3020703001, ; 457: Microsoft.Extensions.Diagnostics => 0xb40c4519 => 178
	i32 3023353419, ; 458: WindowsBase.dll => 0xb434b64b => 164
	i32 3024354802, ; 459: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 229
	i32 3038032645, ; 460: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 314
	i32 3056245963, ; 461: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 251
	i32 3057625584, ; 462: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 242
	i32 3059408633, ; 463: Mono.Android.Runtime => 0xb65adef9 => 169
	i32 3059793426, ; 464: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 465: System.Threading.Tasks => 0xb755818f => 143
	i32 3077302341, ; 466: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 289
	i32 3090735792, ; 467: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 124
	i32 3099732863, ; 468: System.Security.Claims.dll => 0xb8c22b7f => 117
	i32 3103600923, ; 469: System.Formats.Asn1 => 0xb8fd311b => 37
	i32 3111772706, ; 470: System.Runtime.Serialization => 0xb979e222 => 114
	i32 3121463068, ; 471: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 46
	i32 3124832203, ; 472: System.Threading.Tasks.Extensions => 0xba4127cb => 141
	i32 3132293585, ; 473: System.Security.AccessControl => 0xbab301d1 => 116
	i32 3147165239, ; 474: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 33
	i32 3148237826, ; 475: GoogleGson.dll => 0xbba64c02 => 172
	i32 3159123045, ; 476: System.Reflection.Primitives.dll => 0xbc4c6465 => 94
	i32 3160747431, ; 477: System.IO.MemoryMappedFiles => 0xbc652da7 => 52
	i32 3178803400, ; 478: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 243
	i32 3192346100, ; 479: System.Security.SecureString => 0xbe4755f4 => 128
	i32 3193515020, ; 480: System.Web => 0xbe592c0c => 152
	i32 3204380047, ; 481: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 482: System.Xml.XmlDocument.dll => 0xbf506931 => 160
	i32 3211777861, ; 483: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 220
	i32 3220365878, ; 484: System.Threading => 0xbff2e236 => 147
	i32 3226221578, ; 485: System.Runtime.Handles.dll => 0xc04c3c0a => 103
	i32 3251039220, ; 486: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 88
	i32 3258312781, ; 487: Xamarin.AndroidX.CardView => 0xc235e84d => 208
	i32 3265493905, ; 488: System.Linq.Queryable.dll => 0xc2a37b91 => 59
	i32 3265893370, ; 489: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 141
	i32 3277815716, ; 490: System.Resources.Writer.dll => 0xc35f7fa4 => 99
	i32 3279906254, ; 491: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 492: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 493: System.Security.Cryptography.Encoding => 0xc4251ff9 => 121
	i32 3299363146, ; 494: System.Text.Encoding => 0xc4a8494a => 134
	i32 3303498502, ; 495: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 27
	i32 3305363605, ; 496: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 284
	i32 3316684772, ; 497: System.Net.Requests.dll => 0xc5b097e4 => 71
	i32 3317135071, ; 498: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 218
	i32 3317144872, ; 499: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 500: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 206
	i32 3345895724, ; 501: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 247
	i32 3346324047, ; 502: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 244
	i32 3357674450, ; 503: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 301
	i32 3358260929, ; 504: System.Text.Json => 0xc82afec1 => 136
	i32 3362336904, ; 505: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 199
	i32 3362522851, ; 506: Xamarin.AndroidX.Core => 0xc86c06e3 => 215
	i32 3366347497, ; 507: Java.Interop => 0xc8a662e9 => 167
	i32 3374999561, ; 508: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 248
	i32 3381016424, ; 509: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 280
	i32 3395150330, ; 510: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 100
	i32 3403906625, ; 511: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 122
	i32 3405233483, ; 512: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 219
	i32 3421170118, ; 513: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 175
	i32 3428513518, ; 514: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 176
	i32 3429136800, ; 515: System.Xml => 0xcc6479a0 => 162
	i32 3430777524, ; 516: netstandard => 0xcc7d82b4 => 166
	i32 3441283291, ; 517: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 222
	i32 3445260447, ; 518: System.Formats.Tar => 0xcd5a809f => 38
	i32 3452344032, ; 519: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 187
	i32 3463511458, ; 520: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 288
	i32 3471940407, ; 521: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 522: Mono.Android => 0xcf3163e6 => 170
	i32 3479583265, ; 523: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 301
	i32 3484440000, ; 524: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 300
	i32 3485117614, ; 525: System.Text.Json.dll => 0xcfbaacae => 136
	i32 3486566296, ; 526: System.Transactions => 0xcfd0c798 => 149
	i32 3493954962, ; 527: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 211
	i32 3509114376, ; 528: System.Xml.Linq => 0xd128d608 => 154
	i32 3515174580, ; 529: System.Security.dll => 0xd1854eb4 => 129
	i32 3530912306, ; 530: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 531: System.Net.HttpListener => 0xd2ff69f1 => 64
	i32 3560100363, ; 532: System.Threading.Timer => 0xd432d20b => 146
	i32 3570554715, ; 533: System.IO.FileSystem.AccessControl => 0xd4d2575b => 46
	i32 3580758918, ; 534: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 308
	i32 3597029428, ; 535: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 197
	i32 3598340787, ; 536: System.Net.WebSockets.Client => 0xd67a52b3 => 78
	i32 3608519521, ; 537: System.Linq.dll => 0xd715a361 => 60
	i32 3624195450, ; 538: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 105
	i32 3627220390, ; 539: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 246
	i32 3633644679, ; 540: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 201
	i32 3638274909, ; 541: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 48
	i32 3641597786, ; 542: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 232
	i32 3643446276, ; 543: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 305
	i32 3643854240, ; 544: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 243
	i32 3645089577, ; 545: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 546: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 174
	i32 3660523487, ; 547: System.Net.NetworkInformation => 0xda2f27df => 67
	i32 3672681054, ; 548: Mono.Android.dll => 0xdae8aa5e => 170
	i32 3676670898, ; 549: Microsoft.Maui.Controls.HotReload.Forms => 0xdb258bb2 => 311
	i32 3682565725, ; 550: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 207
	i32 3684561358, ; 551: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 211
	i32 3697841164, ; 552: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 310
	i32 3700866549, ; 553: System.Net.WebProxy.dll => 0xdc96bdf5 => 77
	i32 3706696989, ; 554: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 216
	i32 3716563718, ; 555: System.Runtime.Intrinsics => 0xdd864306 => 107
	i32 3718780102, ; 556: Xamarin.AndroidX.Annotation => 0xdda814c6 => 200
	i32 3721776493, ; 557: Mobile => 0xddd5cd6d => 0
	i32 3724971120, ; 558: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 242
	i32 3732100267, ; 559: System.Net.NameResolution => 0xde7354ab => 66
	i32 3737834244, ; 560: System.Net.Http.Json.dll => 0xdecad304 => 62
	i32 3748608112, ; 561: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 193
	i32 3751444290, ; 562: System.Xml.XPath => 0xdf9a7f42 => 159
	i32 3765952165, ; 563: Mobile.dll => 0xe077dea5 => 0
	i32 3786282454, ; 564: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 209
	i32 3792276235, ; 565: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 566: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 187
	i32 3802395368, ; 567: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 568: System.Net.WebProxy => 0xe3a54a09 => 77
	i32 3823082795, ; 569: System.Security.Cryptography.dll => 0xe3df9d2b => 125
	i32 3829621856, ; 570: System.Numerics.dll => 0xe4436460 => 82
	i32 3841636137, ; 571: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 177
	i32 3844307129, ; 572: System.Net.Mail.dll => 0xe52378b9 => 65
	i32 3849253459, ; 573: System.Runtime.InteropServices.dll => 0xe56ef253 => 106
	i32 3870376305, ; 574: System.Net.HttpListener.dll => 0xe6b14171 => 64
	i32 3873536506, ; 575: System.Security.Principal => 0xe6e179fa => 127
	i32 3875112723, ; 576: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 121
	i32 3885497537, ; 577: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 76
	i32 3885922214, ; 578: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 257
	i32 3888767677, ; 579: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 247
	i32 3889960447, ; 580: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 309
	i32 3896106733, ; 581: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 582: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 215
	i32 3901907137, ; 583: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 584: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 43
	i32 3921031405, ; 585: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 260
	i32 3928044579, ; 586: System.Xml.ReaderWriter => 0xea213423 => 155
	i32 3930554604, ; 587: System.Security.Principal.dll => 0xea4780ec => 127
	i32 3931092270, ; 588: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 245
	i32 3945713374, ; 589: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 590: System.Text.Encoding.CodePages => 0xebac8bfe => 132
	i32 3955647286, ; 591: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 203
	i32 3959773229, ; 592: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 234
	i32 3980434154, ; 593: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 304
	i32 3987592930, ; 594: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 286
	i32 4003436829, ; 595: System.Diagnostics.Process.dll => 0xee9f991d => 28
	i32 4015948917, ; 596: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 202
	i32 4025784931, ; 597: System.Memory => 0xeff49a63 => 61
	i32 4046471985, ; 598: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 189
	i32 4054681211, ; 599: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 89
	i32 4068434129, ; 600: System.Private.Xml.Linq.dll => 0xf27f60d1 => 86
	i32 4073602200, ; 601: System.Threading.dll => 0xf2ce3c98 => 147
	i32 4094352644, ; 602: Microsoft.Maui.Essentials.dll => 0xf40add04 => 191
	i32 4099507663, ; 603: System.Drawing.dll => 0xf45985cf => 35
	i32 4100113165, ; 604: System.Private.Uri => 0xf462c30d => 85
	i32 4101593132, ; 605: Xamarin.AndroidX.Emoji2 => 0xf479582c => 223
	i32 4102112229, ; 606: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 299
	i32 4125707920, ; 607: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 294
	i32 4126470640, ; 608: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 176
	i32 4127667938, ; 609: System.IO.FileSystem.Watcher => 0xf60736e2 => 49
	i32 4130442656, ; 610: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 611: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 89
	i32 4150914736, ; 612: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 306
	i32 4151237749, ; 613: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 614: System.Xml.XmlSerializer => 0xf7e95c85 => 161
	i32 4161255271, ; 615: System.Reflection.TypeExtensions => 0xf807b767 => 95
	i32 4164802419, ; 616: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 49
	i32 4181436372, ; 617: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 112
	i32 4182413190, ; 618: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 239
	i32 4182880526, ; 619: Microsoft.VisualStudio.DesignTools.MobileTapContracts => 0xf951b10e => 312
	i32 4185676441, ; 620: System.Security => 0xf97c5a99 => 129
	i32 4196529839, ; 621: System.Net.WebClient.dll => 0xfa21f6af => 75
	i32 4213026141, ; 622: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 193
	i32 4256097574, ; 623: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 216
	i32 4258378803, ; 624: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 238
	i32 4260525087, ; 625: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 626: Microsoft.Maui.Controls.dll => 0xfea12dee => 188
	i32 4274976490, ; 627: System.Runtime.Numerics => 0xfecef6ea => 109
	i32 4292120959, ; 628: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 239
	i32 4294763496 ; 629: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 225
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [630 x i32] [
	i32 67, ; 0
	i32 66, ; 1
	i32 107, ; 2
	i32 235, ; 3
	i32 269, ; 4
	i32 47, ; 5
	i32 79, ; 6
	i32 144, ; 7
	i32 29, ; 8
	i32 310, ; 9
	i32 123, ; 10
	i32 192, ; 11
	i32 101, ; 12
	i32 179, ; 13
	i32 253, ; 14
	i32 106, ; 15
	i32 253, ; 16
	i32 138, ; 17
	i32 273, ; 18
	i32 76, ; 19
	i32 123, ; 20
	i32 13, ; 21
	i32 209, ; 22
	i32 131, ; 23
	i32 255, ; 24
	i32 150, ; 25
	i32 307, ; 26
	i32 308, ; 27
	i32 18, ; 28
	i32 207, ; 29
	i32 26, ; 30
	i32 178, ; 31
	i32 229, ; 32
	i32 1, ; 33
	i32 58, ; 34
	i32 41, ; 35
	i32 90, ; 36
	i32 212, ; 37
	i32 146, ; 38
	i32 231, ; 39
	i32 228, ; 40
	i32 279, ; 41
	i32 53, ; 42
	i32 180, ; 43
	i32 68, ; 44
	i32 307, ; 45
	i32 198, ; 46
	i32 82, ; 47
	i32 292, ; 48
	i32 230, ; 49
	i32 291, ; 50
	i32 130, ; 51
	i32 54, ; 52
	i32 148, ; 53
	i32 73, ; 54
	i32 144, ; 55
	i32 61, ; 56
	i32 145, ; 57
	i32 314, ; 58
	i32 164, ; 59
	i32 303, ; 60
	i32 213, ; 61
	i32 12, ; 62
	i32 226, ; 63
	i32 124, ; 64
	i32 151, ; 65
	i32 112, ; 66
	i32 165, ; 67
	i32 163, ; 68
	i32 228, ; 69
	i32 241, ; 70
	i32 83, ; 71
	i32 290, ; 72
	i32 284, ; 73
	i32 186, ; 74
	i32 149, ; 75
	i32 273, ; 76
	i32 59, ; 77
	i32 181, ; 78
	i32 50, ; 79
	i32 102, ; 80
	i32 113, ; 81
	i32 39, ; 82
	i32 266, ; 83
	i32 264, ; 84
	i32 119, ; 85
	i32 298, ; 86
	i32 51, ; 87
	i32 43, ; 88
	i32 118, ; 89
	i32 218, ; 90
	i32 296, ; 91
	i32 224, ; 92
	i32 80, ; 93
	i32 135, ; 94
	i32 260, ; 95
	i32 205, ; 96
	i32 8, ; 97
	i32 72, ; 98
	i32 278, ; 99
	i32 154, ; 100
	i32 275, ; 101
	i32 153, ; 102
	i32 91, ; 103
	i32 270, ; 104
	i32 44, ; 105
	i32 293, ; 106
	i32 281, ; 107
	i32 274, ; 108
	i32 108, ; 109
	i32 185, ; 110
	i32 128, ; 111
	i32 25, ; 112
	i32 195, ; 113
	i32 71, ; 114
	i32 54, ; 115
	i32 45, ; 116
	i32 302, ; 117
	i32 184, ; 118
	i32 219, ; 119
	i32 22, ; 120
	i32 233, ; 121
	i32 85, ; 122
	i32 42, ; 123
	i32 159, ; 124
	i32 70, ; 125
	i32 246, ; 126
	i32 3, ; 127
	i32 41, ; 128
	i32 62, ; 129
	i32 16, ; 130
	i32 52, ; 131
	i32 305, ; 132
	i32 269, ; 133
	i32 104, ; 134
	i32 274, ; 135
	i32 267, ; 136
	i32 230, ; 137
	i32 33, ; 138
	i32 157, ; 139
	i32 84, ; 140
	i32 31, ; 141
	i32 12, ; 142
	i32 50, ; 143
	i32 55, ; 144
	i32 250, ; 145
	i32 35, ; 146
	i32 177, ; 147
	i32 280, ; 148
	i32 268, ; 149
	i32 203, ; 150
	i32 34, ; 151
	i32 57, ; 152
	i32 179, ; 153
	i32 237, ; 154
	i32 172, ; 155
	i32 17, ; 156
	i32 271, ; 157
	i32 163, ; 158
	i32 293, ; 159
	i32 236, ; 160
	i32 183, ; 161
	i32 263, ; 162
	i32 299, ; 163
	i32 152, ; 164
	i32 259, ; 165
	i32 244, ; 166
	i32 297, ; 167
	i32 205, ; 168
	i32 28, ; 169
	i32 51, ; 170
	i32 295, ; 171
	i32 264, ; 172
	i32 5, ; 173
	i32 279, ; 174
	i32 254, ; 175
	i32 258, ; 176
	i32 210, ; 177
	i32 275, ; 178
	i32 202, ; 179
	i32 221, ; 180
	i32 84, ; 181
	i32 263, ; 182
	i32 60, ; 183
	i32 111, ; 184
	i32 56, ; 185
	i32 309, ; 186
	i32 250, ; 187
	i32 98, ; 188
	i32 19, ; 189
	i32 214, ; 190
	i32 110, ; 191
	i32 100, ; 192
	i32 101, ; 193
	i32 277, ; 194
	i32 103, ; 195
	i32 267, ; 196
	i32 70, ; 197
	i32 37, ; 198
	i32 31, ; 199
	i32 102, ; 200
	i32 72, ; 201
	i32 283, ; 202
	i32 9, ; 203
	i32 122, ; 204
	i32 45, ; 205
	i32 204, ; 206
	i32 186, ; 207
	i32 9, ; 208
	i32 42, ; 209
	i32 4, ; 210
	i32 251, ; 211
	i32 287, ; 212
	i32 180, ; 213
	i32 282, ; 214
	i32 30, ; 215
	i32 137, ; 216
	i32 91, ; 217
	i32 92, ; 218
	i32 302, ; 219
	i32 48, ; 220
	i32 140, ; 221
	i32 111, ; 222
	i32 139, ; 223
	i32 220, ; 224
	i32 114, ; 225
	i32 268, ; 226
	i32 156, ; 227
	i32 311, ; 228
	i32 75, ; 229
	i32 78, ; 230
	i32 240, ; 231
	i32 36, ; 232
	i32 262, ; 233
	i32 224, ; 234
	i32 217, ; 235
	i32 63, ; 236
	i32 137, ; 237
	i32 15, ; 238
	i32 115, ; 239
	i32 256, ; 240
	i32 265, ; 241
	i32 212, ; 242
	i32 47, ; 243
	i32 69, ; 244
	i32 79, ; 245
	i32 125, ; 246
	i32 93, ; 247
	i32 120, ; 248
	i32 272, ; 249
	i32 26, ; 250
	i32 233, ; 251
	i32 96, ; 252
	i32 27, ; 253
	i32 208, ; 254
	i32 300, ; 255
	i32 278, ; 256
	i32 148, ; 257
	i32 168, ; 258
	i32 4, ; 259
	i32 97, ; 260
	i32 32, ; 261
	i32 92, ; 262
	i32 255, ; 263
	i32 181, ; 264
	i32 21, ; 265
	i32 40, ; 266
	i32 169, ; 267
	i32 294, ; 268
	i32 226, ; 269
	i32 286, ; 270
	i32 240, ; 271
	i32 271, ; 272
	i32 265, ; 273
	i32 245, ; 274
	i32 2, ; 275
	i32 133, ; 276
	i32 110, ; 277
	i32 313, ; 278
	i32 182, ; 279
	i32 306, ; 280
	i32 195, ; 281
	i32 303, ; 282
	i32 57, ; 283
	i32 94, ; 284
	i32 285, ; 285
	i32 38, ; 286
	i32 206, ; 287
	i32 313, ; 288
	i32 25, ; 289
	i32 93, ; 290
	i32 88, ; 291
	i32 98, ; 292
	i32 10, ; 293
	i32 86, ; 294
	i32 99, ; 295
	i32 252, ; 296
	i32 173, ; 297
	i32 272, ; 298
	i32 197, ; 299
	i32 282, ; 300
	i32 7, ; 301
	i32 237, ; 302
	i32 277, ; 303
	i32 194, ; 304
	i32 87, ; 305
	i32 175, ; 306
	i32 232, ; 307
	i32 153, ; 308
	i32 281, ; 309
	i32 32, ; 310
	i32 115, ; 311
	i32 81, ; 312
	i32 20, ; 313
	i32 11, ; 314
	i32 161, ; 315
	i32 3, ; 316
	i32 190, ; 317
	i32 289, ; 318
	i32 184, ; 319
	i32 182, ; 320
	i32 83, ; 321
	i32 276, ; 322
	i32 63, ; 323
	i32 291, ; 324
	i32 259, ; 325
	i32 142, ; 326
	i32 241, ; 327
	i32 156, ; 328
	i32 40, ; 329
	i32 116, ; 330
	i32 174, ; 331
	i32 196, ; 332
	i32 285, ; 333
	i32 248, ; 334
	i32 130, ; 335
	i32 74, ; 336
	i32 65, ; 337
	i32 295, ; 338
	i32 171, ; 339
	i32 200, ; 340
	i32 142, ; 341
	i32 105, ; 342
	i32 150, ; 343
	i32 69, ; 344
	i32 155, ; 345
	i32 173, ; 346
	i32 120, ; 347
	i32 126, ; 348
	i32 290, ; 349
	i32 151, ; 350
	i32 223, ; 351
	i32 312, ; 352
	i32 140, ; 353
	i32 210, ; 354
	i32 287, ; 355
	i32 20, ; 356
	i32 14, ; 357
	i32 134, ; 358
	i32 74, ; 359
	i32 58, ; 360
	i32 213, ; 361
	i32 166, ; 362
	i32 167, ; 363
	i32 188, ; 364
	i32 15, ; 365
	i32 73, ; 366
	i32 6, ; 367
	i32 23, ; 368
	i32 235, ; 369
	i32 194, ; 370
	i32 90, ; 371
	i32 288, ; 372
	i32 1, ; 373
	i32 135, ; 374
	i32 236, ; 375
	i32 258, ; 376
	i32 133, ; 377
	i32 68, ; 378
	i32 145, ; 379
	i32 297, ; 380
	i32 276, ; 381
	i32 227, ; 382
	i32 183, ; 383
	i32 87, ; 384
	i32 95, ; 385
	i32 217, ; 386
	i32 222, ; 387
	i32 292, ; 388
	i32 30, ; 389
	i32 44, ; 390
	i32 231, ; 391
	i32 196, ; 392
	i32 108, ; 393
	i32 157, ; 394
	i32 34, ; 395
	i32 22, ; 396
	i32 113, ; 397
	i32 56, ; 398
	i32 256, ; 399
	i32 143, ; 400
	i32 117, ; 401
	i32 119, ; 402
	i32 109, ; 403
	i32 198, ; 404
	i32 138, ; 405
	i32 204, ; 406
	i32 53, ; 407
	i32 104, ; 408
	i32 298, ; 409
	i32 189, ; 410
	i32 190, ; 411
	i32 132, ; 412
	i32 270, ; 413
	i32 261, ; 414
	i32 249, ; 415
	i32 304, ; 416
	i32 227, ; 417
	i32 192, ; 418
	i32 158, ; 419
	i32 283, ; 420
	i32 214, ; 421
	i32 162, ; 422
	i32 131, ; 423
	i32 249, ; 424
	i32 160, ; 425
	i32 296, ; 426
	i32 238, ; 427
	i32 139, ; 428
	i32 261, ; 429
	i32 257, ; 430
	i32 168, ; 431
	i32 191, ; 432
	i32 199, ; 433
	i32 266, ; 434
	i32 39, ; 435
	i32 225, ; 436
	i32 80, ; 437
	i32 55, ; 438
	i32 36, ; 439
	i32 96, ; 440
	i32 165, ; 441
	i32 171, ; 442
	i32 262, ; 443
	i32 81, ; 444
	i32 201, ; 445
	i32 97, ; 446
	i32 29, ; 447
	i32 158, ; 448
	i32 18, ; 449
	i32 126, ; 450
	i32 185, ; 451
	i32 118, ; 452
	i32 221, ; 453
	i32 252, ; 454
	i32 234, ; 455
	i32 254, ; 456
	i32 178, ; 457
	i32 164, ; 458
	i32 229, ; 459
	i32 314, ; 460
	i32 251, ; 461
	i32 242, ; 462
	i32 169, ; 463
	i32 16, ; 464
	i32 143, ; 465
	i32 289, ; 466
	i32 124, ; 467
	i32 117, ; 468
	i32 37, ; 469
	i32 114, ; 470
	i32 46, ; 471
	i32 141, ; 472
	i32 116, ; 473
	i32 33, ; 474
	i32 172, ; 475
	i32 94, ; 476
	i32 52, ; 477
	i32 243, ; 478
	i32 128, ; 479
	i32 152, ; 480
	i32 24, ; 481
	i32 160, ; 482
	i32 220, ; 483
	i32 147, ; 484
	i32 103, ; 485
	i32 88, ; 486
	i32 208, ; 487
	i32 59, ; 488
	i32 141, ; 489
	i32 99, ; 490
	i32 5, ; 491
	i32 13, ; 492
	i32 121, ; 493
	i32 134, ; 494
	i32 27, ; 495
	i32 284, ; 496
	i32 71, ; 497
	i32 218, ; 498
	i32 24, ; 499
	i32 206, ; 500
	i32 247, ; 501
	i32 244, ; 502
	i32 301, ; 503
	i32 136, ; 504
	i32 199, ; 505
	i32 215, ; 506
	i32 167, ; 507
	i32 248, ; 508
	i32 280, ; 509
	i32 100, ; 510
	i32 122, ; 511
	i32 219, ; 512
	i32 175, ; 513
	i32 176, ; 514
	i32 162, ; 515
	i32 166, ; 516
	i32 222, ; 517
	i32 38, ; 518
	i32 187, ; 519
	i32 288, ; 520
	i32 17, ; 521
	i32 170, ; 522
	i32 301, ; 523
	i32 300, ; 524
	i32 136, ; 525
	i32 149, ; 526
	i32 211, ; 527
	i32 154, ; 528
	i32 129, ; 529
	i32 19, ; 530
	i32 64, ; 531
	i32 146, ; 532
	i32 46, ; 533
	i32 308, ; 534
	i32 197, ; 535
	i32 78, ; 536
	i32 60, ; 537
	i32 105, ; 538
	i32 246, ; 539
	i32 201, ; 540
	i32 48, ; 541
	i32 232, ; 542
	i32 305, ; 543
	i32 243, ; 544
	i32 14, ; 545
	i32 174, ; 546
	i32 67, ; 547
	i32 170, ; 548
	i32 311, ; 549
	i32 207, ; 550
	i32 211, ; 551
	i32 310, ; 552
	i32 77, ; 553
	i32 216, ; 554
	i32 107, ; 555
	i32 200, ; 556
	i32 0, ; 557
	i32 242, ; 558
	i32 66, ; 559
	i32 62, ; 560
	i32 193, ; 561
	i32 159, ; 562
	i32 0, ; 563
	i32 209, ; 564
	i32 10, ; 565
	i32 187, ; 566
	i32 11, ; 567
	i32 77, ; 568
	i32 125, ; 569
	i32 82, ; 570
	i32 177, ; 571
	i32 65, ; 572
	i32 106, ; 573
	i32 64, ; 574
	i32 127, ; 575
	i32 121, ; 576
	i32 76, ; 577
	i32 257, ; 578
	i32 247, ; 579
	i32 309, ; 580
	i32 8, ; 581
	i32 215, ; 582
	i32 2, ; 583
	i32 43, ; 584
	i32 260, ; 585
	i32 155, ; 586
	i32 127, ; 587
	i32 245, ; 588
	i32 23, ; 589
	i32 132, ; 590
	i32 203, ; 591
	i32 234, ; 592
	i32 304, ; 593
	i32 286, ; 594
	i32 28, ; 595
	i32 202, ; 596
	i32 61, ; 597
	i32 189, ; 598
	i32 89, ; 599
	i32 86, ; 600
	i32 147, ; 601
	i32 191, ; 602
	i32 35, ; 603
	i32 85, ; 604
	i32 223, ; 605
	i32 299, ; 606
	i32 294, ; 607
	i32 176, ; 608
	i32 49, ; 609
	i32 6, ; 610
	i32 89, ; 611
	i32 306, ; 612
	i32 21, ; 613
	i32 161, ; 614
	i32 95, ; 615
	i32 49, ; 616
	i32 112, ; 617
	i32 239, ; 618
	i32 312, ; 619
	i32 129, ; 620
	i32 75, ; 621
	i32 193, ; 622
	i32 216, ; 623
	i32 238, ; 624
	i32 7, ; 625
	i32 188, ; 626
	i32 109, ; 627
	i32 239, ; 628
	i32 225 ; 629
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ a8cd27e430e55df3e3c1e3a43d35c11d9512a2db"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
