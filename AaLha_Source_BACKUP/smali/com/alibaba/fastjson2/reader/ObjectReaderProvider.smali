.class public Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$LRUAutoTypeCache;,
        Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$ObjectReaderCachePair;
    }
.end annotation


# static fields
.field static readerCache:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$ObjectReaderCachePair;


# instance fields
.field private acceptHashCodes:[J

.field private autoTypeBeforeHandler:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

.field private autoTypeHandler:Lcom/alibaba/fastjson2/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/function/Consumer<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field final autoTypeList:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$LRUAutoTypeCache;

.field final cache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/reader/ObjectReader;",
            ">;"
        }
    .end annotation
.end field

.field final cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/reader/ObjectReader;",
            ">;"
        }
    .end annotation
.end field

.field public final creator:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

.field private denyHashCodes:[J

.field final hashCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/fastjson2/reader/ObjectReader;",
            ">;"
        }
    .end annotation
.end field

.field final mixInCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private typeConverts:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/function/Function;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->hashCache:Ljava/util/concurrent/ConcurrentMap;

    .line 5
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    .line 6
    new-instance v1, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$LRUAutoTypeCache;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$LRUAutoTypeCache;-><init>(I)V

    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->autoTypeList:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$LRUAutoTypeCache;

    const/16 v1, 0xa2

    .line 7
    new-array v1, v1, [J

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->denyHashCodes:[J

    const/4 v1, 0x1

    .line 8
    new-array v1, v1, [J

    const-wide v2, -0x575556d6bb90031cL    # -8.660931078614971E-113

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->acceptHashCodes:[J

    const-wide/16 v1, 0x4f5b

    .line 9
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson2/reader/ObjectArrayReader;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectArrayReader;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v1, -0x4318000b8f6218c8L    # -2.6645156755451724E-15

    .line 10
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplString;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplString;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x4d

    .line 11
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->creator:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    return-void

    nop

    :array_0
    .array-data 8
        -0x7f2f38f433d015feL    # -9.556794763479643E-305
        -0x797c7af6a5dd8da1L    # -2.752875440315231E-277
        -0x7903d40641508511L    # -5.085553800937495E-275
        -0x780ad5e4f815cc5aL
        -0x778d0d602f4f4859L    # -5.73854165649321E-268
        -0x7455117064088059L    # -1.836708762919172E-252
        -0x71522bf34d56bbbdL
        -0x708a0605f20fc080L    # -3.455901468587826E-234
        -0x6e8d5ac0ea86cf51L
        -0x6dedd28ef1c9b048L    # -1.257180119856368E-221
        -0x6be79918c4100b37L    # -7.248495544345653E-212
        -0x6bcfa3d9a7f08c3bL    # -1.943861383644949E-211
        -0x6bc886d7ce2082c1L
        -0x5edc59d06ce874e0L    # -4.802155510082355E-149
        -0x57a77d31efbb3bb0L
        -0x55c250024ef3b6c9L
        -0x555619483e1e3959L
        -0x5555f7d9b785c8c9L
        -0x547da9d0ac191b71L    # -4.191714158844199E-99
        -0x539d9d0ad36755c7L    # -6.886391444241167E-95
        -0x526c85bb67ce1760L    # -3.824696155682281E-89
        -0x51af25e0529f5f6aL    # -1.3554199460470375E-85
        -0x500900dcc771dda6L    # -1.2412673941092185E-77
        -0x5000b36a4665ccb3L    # -1.6894051133204177E-77
        -0x4bf0cbe38b9136b1L    # -6.213767217225293E-58
        -0x4817128a80a2ec5eL    # -2.2892361373052172E-39
        -0x467494ac696cd017L    # -1.6898413909066546E-31
        -0x4322623ed8990f32L    # -1.644030941651994E-15
        -0x431f211cb18d9b67L    # -1.8730190643927076E-15
        -0x41b0ec1695986930L    # -1.4471719223103779E-8
        -0x41458d04e3345bdaL    # -1.5764918430089148E-6
        -0x3ff41e21450d7f75L    # -3.485288105512216
        -0x3ef795051cd19da8L    # -200031.3609283145
        -0x3d99b2f6a71301b4L    # -7.662539098639468E11
        -0x3be00836378383fbL    # -1.4742602222991634E20
        -0x399b4c9c4535faf6L    # -1.3120653062289765E31
        -0x38a661401c18dbfaL    # -5.3210898116926836E35
        -0x372b61a9fe199e57L    # -7.184498624325357E42
        -0x370fb4c5d76f66cbL    # -2.271032093241071E43
        -0x369c96af7d028d72L    # -3.463106763999075E45
        -0x2e10320b4cce92ccL    # -4.9428513655242083E86
        -0x2ab46e33884dc613L    # -7.718587662525667E102
        -0x2a6116e0f4f615ffL    # -2.769276834562512E104
        -0x299097546d18010bL    # -2.305158249887012E108
        -0x2735c2a6a167d454L    # -5.293540616952125E119
        -0x232729ea59bb61c2L    # -1.8485208306343955E139
        -0x21dc5f7f6574642aL    # -3.063522061072579E145
        -0x2103df70dc82befcL    # -3.5965336067206575E149
        -0x20d2200cef324c8bL    # -3.0559968239287952E150
        -0x1f651b9fb7bda7d1L    # -2.3076098125244163E157
        -0x1e6e67fb2a40b971L    # -9.894137060283861E161
        -0x1d14c5381a93b982L    # -3.211360471030518E168
        -0x19fc295ae05296d5L    # -2.6342395696172524E183
        -0x16e7b41aa4e269d6L    # -1.816185970555075E198
        -0x160df452da09f7f9L    # -2.2100835374064227E202
        -0xd67c2f662d64b89L    # -1.0343819992267985E244
        -0xc8fd5b5ab6f4718L
        -0xb8b1bbae70d98caL    # -9.573036758577548E252
        -0xb26c0b04c1c266fL    # -7.404086096916242E254
        -0xa28823071b28e1aL    # -4.514878552434115E259
        -0x93fcbf18c5c9597L
        -0x816918b205a7244L
        -0x388c51df37d896fL
        -0x30c1879bb467428L    # -7.945197787260532E293
        -0x2a4039effa928e0L    # -7.14947811210233E295
        -0x5ea40fde0e1c84L
        -0x22e57f0e12cbfbL
        0x10e067cd55c5e5L
        0x761619136cc13eL
        0x22baa234c5bfb8aL
        0x3085068cb7201b8L
        0x45b11bc78a3aba3L
        0x55cfca0f2281c07L
        0xa555c74fe3a5155L
        0xb6e292fa5955adeL
        0xee6511b66fd5ef0L    # 6.854342740564376E-237
        0x100150a253996624L    # 1.394104277479804E-231
        0x10b2bdca849d9b3eL    # 3.09032861507223E-228
        0x10dbc48446e0dae5L
        0x119b5b1f10210afcL
        0x144277b467723158L    # 4.388573993986807E-211
        0x14db2e6fead04af0L    # 3.307156557815155E-208
        0x154b6cb22d294cfaL    # 4.271035506616844E-206
        0x17924cca5227622aL
        0x193b2697eaaed41aL    # 3.9000001662652114E-187
        0x1cd6f11c6a358bb7L    # 9.498405308272427E-170
        0x1e0a8c3358ff3daeL    # 5.762601583556236E-164
        0x24652ce717e713bbL
        0x24d2f6048fef4e49L
        0x24ec99d5e7dc5571L    # 8.058828264835688E-131
        0x25e962f1c28f71a2L
        0x275d0732b877af29L
        0x28ac82e44e933606L
        0x2a71ce2cc40a710cL    # 3.105364083941061E-104
        0x2ad1ce3a112f015dL
        0x2adfefbbfe29d931L
        0x2b3a37467a344cdfL
        0x2b6dd8b3229d6837L    # 1.7057077092413725E-99
        0x2d308dbbc851b0d8L    # 5.078962391870398E-91
        0x2fe950d3ea52ae0dL    # 6.832216944281275E-78
        0x313bb4abd8d4554cL    # 1.56808971921097E-71
        0x327c8ed7c8706905L    # 1.6948389662237084E-65
        0x332f0b5369a18310L
        0x339a3e0b6beebee9L    # 4.0826654570968825E-60
        0x33c64b921f523f2fL    # 2.77486720533494E-59
        0x33e7f3e02571b153L    # 1.1924611050770566E-58
        0x34a81ee78429fdf1L    # 4.918595094295287E-55
        0x37317698dcfce894L    # 7.830801102106149E-43
        0x378307cb0111e878L    # 2.730734411398275E-41
        0x3826f4b2380c8b9bL    # 3.373058177088523E-38
        0x398f942e01920cf0L    # 1.9461954727645544E-31
        0x3a31412dbb05c7ffL    # 2.1778372103247874E-28
        0x3a7ee0635eb2bc33L    # 6.235462802057997E-27
        0x3adba40367f73264L    # 3.5724737671988184E-25
        0x3b0b51ecbf6db221L    # 2.8248237289442712E-24
        0x42d11a560fc9fba9L    # 7.521924278884664E13
        0x43320dc9d2ae0892L    # 5.08171005500021E15
        0x440e89208f445fb9L    # 7.041042216469549E19
        0x46c808a4b5841f57L    # 9.749252615377375E32
        0x470fd3a18bb39414L    # 2.065669875132854E34
        0x49312bdafb0077d9L    # 3.829330118647328E44
        0x4a3797b30328202cL    # 3.448058737338662E49
        0x4ba3e254e758d70dL    # 2.4377845509161763E56
        0x4bf881e49d37f530L    # 9.614713083096315E57
        0x4cf54eec05e3e818L    # 5.478576021141778E62
        0x4da972745feb30c1L    # 1.339945589251118E66
        0x4ef08c90ff16c675L    # 1.8274816638330285E72
        0x4fd10ddc6d13821fL    # 3.085523505057036E76
        0x521b4f573376df4aL    # 3.3954649887443486E87
        0x527db6b46ce3bcbcL    # 2.3643694017797754E89
        0x535e552d6f9700c1L    # 3.954486474370437E93
        0x54855e265fe1dad5L    # 1.4605211590140444E99
        0x5728504a6d454ffcL    # 7.309005913296069E111
        0x599b5c1213a099acL    # 4.521565120980506E123
        0x5a5bd85c072e5efeL
        0x5ab0cb3071ab40d1L    # 7.275532043244496E128
        0x5b6149820275ea42L
        0x5d74d3e5b9370476L    # 1.5873759122766088E142
        0x5d92e6ddde40ed84L    # 5.762376793011253E142
        0x5e61093ef8cdddbbL    # 4.2545979149900575E146
        0x5f215622fb630753L    # 1.773407570959078E150
        0x61c5bdd721385107L    # 9.781342160839794E162
        0x62db241274397c34L
        0x636ecca2a131b235L    # 9.29884914075952E170
        0x63a220e60a17c7b9L    # 8.757288450874107E171
        0x647ab0224e149ebeL    # 1.0561215288164044E176
        0x65f81b84c1d920cdL    # 1.6005507777082922E183
        0x665c53c311193973L    # 1.2036519694555594E185
        0x6749835432e0f0d2L
        0x69b6e0175084b377L    # 1.750995289311963E201
        0x6a47501ebb2afdb2L    # 9.136601149026956E203
        0x6fcabf6fa54cafffL    # 3.244253068846464E230
        0x6fe92d83fc0a4628L    # 1.2215307041274365E231
        0x746bd4a53ec195fbL    # 6.376313675246868E252
        0x75cc60f5871d0fd3L    # 2.7270901325332595E259
        0x767a586a5107feefL    # 5.184902282980218E262
        0x793addded7a967f5L    # 9.301865880350898E275
        0x7aa7ee3627a19cf3L    # 6.950210684357695E282
        0x7afa070241b8cc4bL    # 2.4189469652688762E284
        0x7ed9311d28bf1a65L    # 1.0797314149657436E303
        0x7ed9481d28bf417aL    # 1.0835821490243428E303
        0x7ee6c477da20bbe3L    # 1.951641816604592E303
    .end array-data
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;)V
    .locals 5

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->hashCache:Ljava/util/concurrent/ConcurrentMap;

    .line 17
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    .line 18
    new-instance v1, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$LRUAutoTypeCache;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$LRUAutoTypeCache;-><init>(I)V

    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->autoTypeList:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$LRUAutoTypeCache;

    const/16 v1, 0xa2

    .line 19
    new-array v1, v1, [J

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->denyHashCodes:[J

    const/4 v1, 0x1

    .line 20
    new-array v1, v1, [J

    const-wide v2, -0x575556d6bb90031cL    # -8.660931078614971E-113

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->acceptHashCodes:[J

    const-wide/16 v1, 0x4f5b

    .line 21
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson2/reader/ObjectArrayReader;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectArrayReader;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v1, -0x4318000b8f6218c8L    # -2.6645156755451724E-15

    .line 22
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplString;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplString;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x4d

    .line 23
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->creator:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    return-void

    nop

    :array_0
    .array-data 8
        -0x7f2f38f433d015feL    # -9.556794763479643E-305
        -0x797c7af6a5dd8da1L    # -2.752875440315231E-277
        -0x7903d40641508511L    # -5.085553800937495E-275
        -0x780ad5e4f815cc5aL
        -0x778d0d602f4f4859L    # -5.73854165649321E-268
        -0x7455117064088059L    # -1.836708762919172E-252
        -0x71522bf34d56bbbdL
        -0x708a0605f20fc080L    # -3.455901468587826E-234
        -0x6e8d5ac0ea86cf51L
        -0x6dedd28ef1c9b048L    # -1.257180119856368E-221
        -0x6be79918c4100b37L    # -7.248495544345653E-212
        -0x6bcfa3d9a7f08c3bL    # -1.943861383644949E-211
        -0x6bc886d7ce2082c1L
        -0x5edc59d06ce874e0L    # -4.802155510082355E-149
        -0x57a77d31efbb3bb0L
        -0x55c250024ef3b6c9L
        -0x555619483e1e3959L
        -0x5555f7d9b785c8c9L
        -0x547da9d0ac191b71L    # -4.191714158844199E-99
        -0x539d9d0ad36755c7L    # -6.886391444241167E-95
        -0x526c85bb67ce1760L    # -3.824696155682281E-89
        -0x51af25e0529f5f6aL    # -1.3554199460470375E-85
        -0x500900dcc771dda6L    # -1.2412673941092185E-77
        -0x5000b36a4665ccb3L    # -1.6894051133204177E-77
        -0x4bf0cbe38b9136b1L    # -6.213767217225293E-58
        -0x4817128a80a2ec5eL    # -2.2892361373052172E-39
        -0x467494ac696cd017L    # -1.6898413909066546E-31
        -0x4322623ed8990f32L    # -1.644030941651994E-15
        -0x431f211cb18d9b67L    # -1.8730190643927076E-15
        -0x41b0ec1695986930L    # -1.4471719223103779E-8
        -0x41458d04e3345bdaL    # -1.5764918430089148E-6
        -0x3ff41e21450d7f75L    # -3.485288105512216
        -0x3ef795051cd19da8L    # -200031.3609283145
        -0x3d99b2f6a71301b4L    # -7.662539098639468E11
        -0x3be00836378383fbL    # -1.4742602222991634E20
        -0x399b4c9c4535faf6L    # -1.3120653062289765E31
        -0x38a661401c18dbfaL    # -5.3210898116926836E35
        -0x372b61a9fe199e57L    # -7.184498624325357E42
        -0x370fb4c5d76f66cbL    # -2.271032093241071E43
        -0x369c96af7d028d72L    # -3.463106763999075E45
        -0x2e10320b4cce92ccL    # -4.9428513655242083E86
        -0x2ab46e33884dc613L    # -7.718587662525667E102
        -0x2a6116e0f4f615ffL    # -2.769276834562512E104
        -0x299097546d18010bL    # -2.305158249887012E108
        -0x2735c2a6a167d454L    # -5.293540616952125E119
        -0x232729ea59bb61c2L    # -1.8485208306343955E139
        -0x21dc5f7f6574642aL    # -3.063522061072579E145
        -0x2103df70dc82befcL    # -3.5965336067206575E149
        -0x20d2200cef324c8bL    # -3.0559968239287952E150
        -0x1f651b9fb7bda7d1L    # -2.3076098125244163E157
        -0x1e6e67fb2a40b971L    # -9.894137060283861E161
        -0x1d14c5381a93b982L    # -3.211360471030518E168
        -0x19fc295ae05296d5L    # -2.6342395696172524E183
        -0x16e7b41aa4e269d6L    # -1.816185970555075E198
        -0x160df452da09f7f9L    # -2.2100835374064227E202
        -0xd67c2f662d64b89L    # -1.0343819992267985E244
        -0xc8fd5b5ab6f4718L
        -0xb8b1bbae70d98caL    # -9.573036758577548E252
        -0xb26c0b04c1c266fL    # -7.404086096916242E254
        -0xa28823071b28e1aL    # -4.514878552434115E259
        -0x93fcbf18c5c9597L
        -0x816918b205a7244L
        -0x388c51df37d896fL
        -0x30c1879bb467428L    # -7.945197787260532E293
        -0x2a4039effa928e0L    # -7.14947811210233E295
        -0x5ea40fde0e1c84L
        -0x22e57f0e12cbfbL
        0x10e067cd55c5e5L
        0x761619136cc13eL
        0x22baa234c5bfb8aL
        0x3085068cb7201b8L
        0x45b11bc78a3aba3L
        0x55cfca0f2281c07L
        0xa555c74fe3a5155L
        0xb6e292fa5955adeL
        0xee6511b66fd5ef0L    # 6.854342740564376E-237
        0x100150a253996624L    # 1.394104277479804E-231
        0x10b2bdca849d9b3eL    # 3.09032861507223E-228
        0x10dbc48446e0dae5L
        0x119b5b1f10210afcL
        0x144277b467723158L    # 4.388573993986807E-211
        0x14db2e6fead04af0L    # 3.307156557815155E-208
        0x154b6cb22d294cfaL    # 4.271035506616844E-206
        0x17924cca5227622aL
        0x193b2697eaaed41aL    # 3.9000001662652114E-187
        0x1cd6f11c6a358bb7L    # 9.498405308272427E-170
        0x1e0a8c3358ff3daeL    # 5.762601583556236E-164
        0x24652ce717e713bbL
        0x24d2f6048fef4e49L
        0x24ec99d5e7dc5571L    # 8.058828264835688E-131
        0x25e962f1c28f71a2L
        0x275d0732b877af29L
        0x28ac82e44e933606L
        0x2a71ce2cc40a710cL    # 3.105364083941061E-104
        0x2ad1ce3a112f015dL
        0x2adfefbbfe29d931L
        0x2b3a37467a344cdfL
        0x2b6dd8b3229d6837L    # 1.7057077092413725E-99
        0x2d308dbbc851b0d8L    # 5.078962391870398E-91
        0x2fe950d3ea52ae0dL    # 6.832216944281275E-78
        0x313bb4abd8d4554cL    # 1.56808971921097E-71
        0x327c8ed7c8706905L    # 1.6948389662237084E-65
        0x332f0b5369a18310L
        0x339a3e0b6beebee9L    # 4.0826654570968825E-60
        0x33c64b921f523f2fL    # 2.77486720533494E-59
        0x33e7f3e02571b153L    # 1.1924611050770566E-58
        0x34a81ee78429fdf1L    # 4.918595094295287E-55
        0x37317698dcfce894L    # 7.830801102106149E-43
        0x378307cb0111e878L    # 2.730734411398275E-41
        0x3826f4b2380c8b9bL    # 3.373058177088523E-38
        0x398f942e01920cf0L    # 1.9461954727645544E-31
        0x3a31412dbb05c7ffL    # 2.1778372103247874E-28
        0x3a7ee0635eb2bc33L    # 6.235462802057997E-27
        0x3adba40367f73264L    # 3.5724737671988184E-25
        0x3b0b51ecbf6db221L    # 2.8248237289442712E-24
        0x42d11a560fc9fba9L    # 7.521924278884664E13
        0x43320dc9d2ae0892L    # 5.08171005500021E15
        0x440e89208f445fb9L    # 7.041042216469549E19
        0x46c808a4b5841f57L    # 9.749252615377375E32
        0x470fd3a18bb39414L    # 2.065669875132854E34
        0x49312bdafb0077d9L    # 3.829330118647328E44
        0x4a3797b30328202cL    # 3.448058737338662E49
        0x4ba3e254e758d70dL    # 2.4377845509161763E56
        0x4bf881e49d37f530L    # 9.614713083096315E57
        0x4cf54eec05e3e818L    # 5.478576021141778E62
        0x4da972745feb30c1L    # 1.339945589251118E66
        0x4ef08c90ff16c675L    # 1.8274816638330285E72
        0x4fd10ddc6d13821fL    # 3.085523505057036E76
        0x521b4f573376df4aL    # 3.3954649887443486E87
        0x527db6b46ce3bcbcL    # 2.3643694017797754E89
        0x535e552d6f9700c1L    # 3.954486474370437E93
        0x54855e265fe1dad5L    # 1.4605211590140444E99
        0x5728504a6d454ffcL    # 7.309005913296069E111
        0x599b5c1213a099acL    # 4.521565120980506E123
        0x5a5bd85c072e5efeL
        0x5ab0cb3071ab40d1L    # 7.275532043244496E128
        0x5b6149820275ea42L
        0x5d74d3e5b9370476L    # 1.5873759122766088E142
        0x5d92e6ddde40ed84L    # 5.762376793011253E142
        0x5e61093ef8cdddbbL    # 4.2545979149900575E146
        0x5f215622fb630753L    # 1.773407570959078E150
        0x61c5bdd721385107L    # 9.781342160839794E162
        0x62db241274397c34L
        0x636ecca2a131b235L    # 9.29884914075952E170
        0x63a220e60a17c7b9L    # 8.757288450874107E171
        0x647ab0224e149ebeL    # 1.0561215288164044E176
        0x65f81b84c1d920cdL    # 1.6005507777082922E183
        0x665c53c311193973L    # 1.2036519694555594E185
        0x6749835432e0f0d2L
        0x69b6e0175084b377L    # 1.750995289311963E201
        0x6a47501ebb2afdb2L    # 9.136601149026956E203
        0x6fcabf6fa54cafffL    # 3.244253068846464E230
        0x6fe92d83fc0a4628L    # 1.2215307041274365E231
        0x746bd4a53ec195fbL    # 6.376313675246868E252
        0x75cc60f5871d0fd3L    # 2.7270901325332595E259
        0x767a586a5107feefL    # 5.184902282980218E262
        0x793addded7a967f5L    # 9.301865880350898E275
        0x7aa7ee3627a19cf3L    # 6.950210684357695E282
        0x7afa070241b8cc4bL    # 2.4189469652688762E284
        0x7ed9311d28bf1a65L    # 1.0797314149657436E303
        0x7ed9481d28bf417aL    # 1.0835821490243428E303
        0x7ee6c477da20bbe3L    # 1.951641816604592E303
    .end array-data
.end method

.method public static synthetic a(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;Ljava/lang/reflect/Constructor;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getCreator(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;Ljava/lang/reflect/Constructor;)V

    .line 4
    return-void
.end method

.method public static synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    return-object p0
.end method

.method public static buildInitTypeConverts()Ljava/util/concurrent/ConcurrentMap;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/function/Function;",
            ">;>;"
        }
    .end annotation

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    .line 17
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 18
    .line 19
    new-instance v3, Lcom/alibaba/fastjson2/reader/g1;

    .line 20
    .line 21
    .line 22
    invoke-direct {v3}, Lcom/alibaba/fastjson2/reader/g1;-><init>()V

    .line 23
    .line 24
    const-class v4, Ljava/lang/Character;

    .line 25
    .line 26
    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v4, v5, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 30
    .line 31
    const/16 v3, 0xc

    .line 32
    .line 33
    new-array v6, v3, [Ljava/lang/Class;

    .line 34
    const/4 v7, 0x0

    .line 35
    .line 36
    const-class v8, Ljava/lang/Boolean;

    .line 37
    .line 38
    aput-object v8, v6, v7

    .line 39
    const/4 v9, 0x1

    .line 40
    .line 41
    const-class v10, Ljava/lang/Byte;

    .line 42
    .line 43
    aput-object v10, v6, v9

    .line 44
    const/4 v9, 0x2

    .line 45
    .line 46
    const-class v11, Ljava/lang/Short;

    .line 47
    .line 48
    aput-object v11, v6, v9

    .line 49
    const/4 v9, 0x3

    .line 50
    .line 51
    const-class v12, Ljava/lang/Integer;

    .line 52
    .line 53
    aput-object v12, v6, v9

    .line 54
    const/4 v9, 0x4

    .line 55
    .line 56
    const-class v13, Ljava/lang/Long;

    .line 57
    .line 58
    aput-object v13, v6, v9

    .line 59
    const/4 v9, 0x5

    .line 60
    .line 61
    const-class v14, Ljava/lang/Number;

    .line 62
    .line 63
    aput-object v14, v6, v9

    .line 64
    const/4 v9, 0x6

    .line 65
    .line 66
    const-class v15, Ljava/lang/Float;

    .line 67
    .line 68
    aput-object v15, v6, v9

    .line 69
    const/4 v9, 0x7

    .line 70
    .line 71
    move/from16 v16, v7

    .line 72
    .line 73
    const-class v7, Ljava/lang/Double;

    .line 74
    .line 75
    aput-object v7, v6, v9

    .line 76
    .line 77
    const/16 v17, 0x8

    .line 78
    .line 79
    const-class v9, Ljava/math/BigInteger;

    .line 80
    .line 81
    aput-object v9, v6, v17

    .line 82
    .line 83
    const/16 v17, 0x9

    .line 84
    .line 85
    const-class v3, Ljava/math/BigDecimal;

    .line 86
    .line 87
    aput-object v3, v6, v17

    .line 88
    .line 89
    const-class v17, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 90
    .line 91
    const/16 v19, 0xa

    .line 92
    .line 93
    aput-object v17, v6, v19

    .line 94
    .line 95
    const-class v17, Ljava/util/concurrent/atomic/AtomicLong;

    .line 96
    .line 97
    const/16 v19, 0xb

    .line 98
    .line 99
    aput-object v17, v6, v19

    .line 100
    .line 101
    move-object/from16 v17, v6

    .line 102
    .line 103
    new-instance v6, Lcom/alibaba/fastjson2/function/impl/ToAny;

    .line 104
    .line 105
    move-object/from16 v19, v4

    .line 106
    const/4 v4, 0x0

    .line 107
    .line 108
    .line 109
    invoke-direct {v6, v8, v4}, Lcom/alibaba/fastjson2/function/impl/ToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    move-result-object v4

    .line 114
    .line 115
    move-object/from16 v20, v5

    .line 116
    .line 117
    .line 118
    invoke-static/range {v16 .. v16}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 119
    move-result-object v5

    .line 120
    .line 121
    move-object/from16 v21, v14

    .line 122
    .line 123
    .line 124
    invoke-static/range {v16 .. v16}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 125
    move-result-object v14

    .line 126
    .line 127
    move-object/from16 v22, v1

    .line 128
    .line 129
    move-object/from16 v23, v7

    .line 130
    .line 131
    move/from16 v1, v16

    .line 132
    .line 133
    :goto_0
    const/16 v7, 0xc

    .line 134
    .line 135
    if-ge v1, v7, :cond_0

    .line 136
    .line 137
    aget-object v7, v17, v1

    .line 138
    .line 139
    .line 140
    invoke-static {v2, v7, v8, v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 141
    .line 142
    add-int/lit8 v1, v1, 0x1

    .line 143
    goto :goto_0

    .line 144
    .line 145
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson2/function/impl/ToAny;

    .line 146
    .line 147
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 148
    .line 149
    .line 150
    invoke-direct {v1, v8, v6}, Lcom/alibaba/fastjson2/function/impl/ToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 151
    .line 152
    move/from16 v6, v16

    .line 153
    .line 154
    :goto_1
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 155
    .line 156
    move-object/from16 v24, v8

    .line 157
    .line 158
    const/16 v8, 0xc

    .line 159
    .line 160
    if-ge v6, v8, :cond_1

    .line 161
    .line 162
    aget-object v8, v17, v6

    .line 163
    .line 164
    .line 165
    invoke-static {v2, v8, v7, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 166
    .line 167
    add-int/lit8 v6, v6, 0x1

    .line 168
    .line 169
    move-object/from16 v8, v24

    .line 170
    goto :goto_1

    .line 171
    .line 172
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson2/function/impl/ToAny;

    .line 173
    .line 174
    const-class v6, Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    invoke-direct {v1, v6}, Lcom/alibaba/fastjson2/function/impl/ToAny;-><init>(Ljava/lang/Class;)V

    .line 178
    .line 179
    move-object/from16 v25, v7

    .line 180
    .line 181
    move/from16 v8, v16

    .line 182
    .line 183
    :goto_2
    const/16 v7, 0xc

    .line 184
    .line 185
    if-ge v8, v7, :cond_2

    .line 186
    .line 187
    aget-object v7, v17, v8

    .line 188
    .line 189
    .line 190
    invoke-static {v2, v7, v6, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 191
    .line 192
    add-int/lit8 v8, v8, 0x1

    .line 193
    goto :goto_2

    .line 194
    .line 195
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson2/function/impl/ToAny;

    .line 196
    .line 197
    .line 198
    invoke-direct {v1, v3}, Lcom/alibaba/fastjson2/function/impl/ToAny;-><init>(Ljava/lang/Class;)V

    .line 199
    .line 200
    move/from16 v7, v16

    .line 201
    .line 202
    :goto_3
    const/16 v8, 0xc

    .line 203
    .line 204
    if-ge v7, v8, :cond_3

    .line 205
    .line 206
    aget-object v8, v17, v7

    .line 207
    .line 208
    .line 209
    invoke-static {v2, v8, v3, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 210
    .line 211
    add-int/lit8 v7, v7, 0x1

    .line 212
    goto :goto_3

    .line 213
    .line 214
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson2/function/impl/ToAny;

    .line 215
    .line 216
    .line 217
    invoke-direct {v1, v9}, Lcom/alibaba/fastjson2/function/impl/ToAny;-><init>(Ljava/lang/Class;)V

    .line 218
    .line 219
    move/from16 v7, v16

    .line 220
    .line 221
    :goto_4
    const/16 v8, 0xc

    .line 222
    .line 223
    if-ge v7, v8, :cond_4

    .line 224
    .line 225
    aget-object v8, v17, v7

    .line 226
    .line 227
    .line 228
    invoke-static {v2, v8, v9, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 229
    .line 230
    add-int/lit8 v7, v7, 0x1

    .line 231
    goto :goto_4

    .line 232
    .line 233
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson2/function/impl/ToAny;

    .line 234
    .line 235
    .line 236
    invoke-direct {v1, v10}, Lcom/alibaba/fastjson2/function/impl/ToAny;-><init>(Ljava/lang/Class;)V

    .line 237
    .line 238
    move/from16 v7, v16

    .line 239
    .line 240
    :goto_5
    const/16 v8, 0xc

    .line 241
    .line 242
    if-ge v7, v8, :cond_5

    .line 243
    .line 244
    aget-object v8, v17, v7

    .line 245
    .line 246
    .line 247
    invoke-static {v2, v8, v10, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 248
    .line 249
    add-int/lit8 v7, v7, 0x1

    .line 250
    goto :goto_5

    .line 251
    .line 252
    :cond_5
    new-instance v1, Lcom/alibaba/fastjson2/function/impl/ToAny;

    .line 253
    .line 254
    .line 255
    invoke-direct {v1, v10, v14}, Lcom/alibaba/fastjson2/function/impl/ToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 256
    .line 257
    move/from16 v7, v16

    .line 258
    .line 259
    :goto_6
    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 260
    .line 261
    move-object/from16 v26, v9

    .line 262
    .line 263
    const/16 v9, 0xc

    .line 264
    .line 265
    if-ge v7, v9, :cond_6

    .line 266
    .line 267
    aget-object v9, v17, v7

    .line 268
    .line 269
    .line 270
    invoke-static {v2, v9, v8, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 271
    .line 272
    add-int/lit8 v7, v7, 0x1

    .line 273
    .line 274
    move-object/from16 v9, v26

    .line 275
    goto :goto_6

    .line 276
    .line 277
    :cond_6
    new-instance v1, Lcom/alibaba/fastjson2/function/impl/ToAny;

    .line 278
    .line 279
    .line 280
    invoke-direct {v1, v11}, Lcom/alibaba/fastjson2/function/impl/ToAny;-><init>(Ljava/lang/Class;)V

    .line 281
    .line 282
    move/from16 v7, v16

    .line 283
    .line 284
    :goto_7
    const/16 v9, 0xc

    .line 285
    .line 286
    if-ge v7, v9, :cond_7

    .line 287
    .line 288
    aget-object v9, v17, v7

    .line 289
    .line 290
    .line 291
    invoke-static {v2, v9, v11, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 292
    .line 293
    add-int/lit8 v7, v7, 0x1

    .line 294
    goto :goto_7

    .line 295
    .line 296
    :cond_7
    new-instance v1, Lcom/alibaba/fastjson2/function/impl/ToAny;

    .line 297
    .line 298
    .line 299
    invoke-direct {v1, v11, v5}, Lcom/alibaba/fastjson2/function/impl/ToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 300
    .line 301
    move/from16 v7, v16

    .line 302
    .line 303
    :goto_8
    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 304
    .line 305
    move-object/from16 v27, v3

    .line 306
    .line 307
    const/16 v3, 0xc

    .line 308
    .line 309
    if-ge v7, v3, :cond_8

    .line 310
    .line 311
    aget-object v3, v17, v7

    .line 312
    .line 313
    .line 314
    invoke-static {v2, v3, v9, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 315
    .line 316
    add-int/lit8 v7, v7, 0x1

    .line 317
    .line 318
    move-object/from16 v3, v27

    .line 319
    goto :goto_8

    .line 320
    .line 321
    :cond_8
    new-instance v1, Lcom/alibaba/fastjson2/function/impl/ToAny;

    .line 322
    .line 323
    .line 324
    invoke-direct {v1, v12}, Lcom/alibaba/fastjson2/function/impl/ToAny;-><init>(Ljava/lang/Class;)V

    .line 325
    .line 326
    move/from16 v3, v16

    .line 327
    .line 328
    :goto_9
    const/16 v7, 0xc

    .line 329
    .line 330
    if-ge v3, v7, :cond_9

    .line 331
    .line 332
    aget-object v7, v17, v3

    .line 333
    .line 334
    .line 335
    invoke-static {v2, v7, v12, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 336
    .line 337
    add-int/lit8 v3, v3, 0x1

    .line 338
    goto :goto_9

    .line 339
    .line 340
    :cond_9
    new-instance v1, Lcom/alibaba/fastjson2/function/impl/ToAny;

    .line 341
    .line 342
    .line 343
    invoke-direct {v1, v12, v4}, Lcom/alibaba/fastjson2/function/impl/ToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 344
    .line 345
    move/from16 v3, v16

    .line 346
    .line 347
    :goto_a
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 348
    .line 349
    move-object/from16 v28, v12

    .line 350
    .line 351
    const/16 v12, 0xc

    .line 352
    .line 353
    if-ge v3, v12, :cond_a

    .line 354
    .line 355
    aget-object v12, v17, v3

    .line 356
    .line 357
    .line 358
    invoke-static {v2, v12, v7, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 359
    .line 360
    add-int/lit8 v3, v3, 0x1

    .line 361
    .line 362
    move-object/from16 v12, v28

    .line 363
    goto :goto_a

    .line 364
    .line 365
    :cond_a
    new-instance v1, Lcom/alibaba/fastjson2/function/impl/ToAny;

    .line 366
    .line 367
    .line 368
    invoke-direct {v1, v13}, Lcom/alibaba/fastjson2/function/impl/ToAny;-><init>(Ljava/lang/Class;)V

    .line 369
    .line 370
    move/from16 v3, v16

    .line 371
    .line 372
    :goto_b
    const/16 v12, 0xc

    .line 373
    .line 374
    if-ge v3, v12, :cond_b

    .line 375
    .line 376
    aget-object v12, v17, v3

    .line 377
    .line 378
    .line 379
    invoke-static {v2, v12, v13, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 380
    .line 381
    add-int/lit8 v3, v3, 0x1

    .line 382
    goto :goto_b

    .line 383
    .line 384
    :cond_b
    new-instance v1, Lcom/alibaba/fastjson2/function/impl/ToAny;

    .line 385
    .line 386
    .line 387
    invoke-direct {v1, v13, v0}, Lcom/alibaba/fastjson2/function/impl/ToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 388
    .line 389
    move/from16 v3, v16

    .line 390
    .line 391
    :goto_c
    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 392
    .line 393
    move-object/from16 v29, v13

    .line 394
    .line 395
    const/16 v13, 0xc

    .line 396
    .line 397
    if-ge v3, v13, :cond_c

    .line 398
    .line 399
    aget-object v13, v17, v3

    .line 400
    .line 401
    .line 402
    invoke-static {v2, v13, v12, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 403
    .line 404
    add-int/lit8 v3, v3, 0x1

    .line 405
    .line 406
    move-object/from16 v13, v29

    .line 407
    goto :goto_c

    .line 408
    .line 409
    :cond_c
    new-instance v1, Lcom/alibaba/fastjson2/function/impl/ToAny;

    .line 410
    .line 411
    .line 412
    invoke-direct {v1, v15}, Lcom/alibaba/fastjson2/function/impl/ToAny;-><init>(Ljava/lang/Class;)V

    .line 413
    .line 414
    move/from16 v3, v16

    .line 415
    .line 416
    :goto_d
    const/16 v13, 0xc

    .line 417
    .line 418
    if-ge v3, v13, :cond_d

    .line 419
    .line 420
    aget-object v13, v17, v3

    .line 421
    .line 422
    .line 423
    invoke-static {v2, v13, v15, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 424
    .line 425
    add-int/lit8 v3, v3, 0x1

    .line 426
    goto :goto_d

    .line 427
    .line 428
    :cond_d
    new-instance v1, Lcom/alibaba/fastjson2/function/impl/ToAny;

    .line 429
    const/4 v3, 0x0

    .line 430
    .line 431
    .line 432
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 433
    move-result-object v13

    .line 434
    .line 435
    .line 436
    invoke-direct {v1, v15, v13}, Lcom/alibaba/fastjson2/function/impl/ToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 437
    .line 438
    move/from16 v30, v3

    .line 439
    .line 440
    move/from16 v13, v16

    .line 441
    .line 442
    :goto_e
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 443
    .line 444
    move-object/from16 v31, v11

    .line 445
    .line 446
    const/16 v11, 0xc

    .line 447
    .line 448
    if-ge v13, v11, :cond_e

    .line 449
    .line 450
    aget-object v11, v17, v13

    .line 451
    .line 452
    .line 453
    invoke-static {v2, v11, v3, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 454
    .line 455
    add-int/lit8 v13, v13, 0x1

    .line 456
    .line 457
    move-object/from16 v11, v31

    .line 458
    goto :goto_e

    .line 459
    .line 460
    :cond_e
    new-instance v1, Lcom/alibaba/fastjson2/function/impl/ToAny;

    .line 461
    .line 462
    move-object/from16 v11, v23

    .line 463
    .line 464
    .line 465
    invoke-direct {v1, v11}, Lcom/alibaba/fastjson2/function/impl/ToAny;-><init>(Ljava/lang/Class;)V

    .line 466
    .line 467
    move-object/from16 v18, v10

    .line 468
    .line 469
    move/from16 v13, v16

    .line 470
    .line 471
    :goto_f
    const/16 v10, 0xc

    .line 472
    .line 473
    if-ge v13, v10, :cond_f

    .line 474
    .line 475
    aget-object v10, v17, v13

    .line 476
    .line 477
    .line 478
    invoke-static {v2, v10, v11, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 479
    .line 480
    add-int/lit8 v13, v13, 0x1

    .line 481
    goto :goto_f

    .line 482
    .line 483
    :cond_f
    new-instance v1, Lcom/alibaba/fastjson2/function/impl/ToAny;

    .line 484
    .line 485
    move-object/from16 v10, v22

    .line 486
    .line 487
    .line 488
    invoke-direct {v1, v11, v10}, Lcom/alibaba/fastjson2/function/impl/ToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 489
    .line 490
    move-object/from16 v22, v15

    .line 491
    .line 492
    move/from16 v13, v16

    .line 493
    .line 494
    :goto_10
    sget-object v15, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 495
    .line 496
    move-object/from16 v32, v11

    .line 497
    .line 498
    const/16 v11, 0xc

    .line 499
    .line 500
    if-ge v13, v11, :cond_10

    .line 501
    .line 502
    aget-object v11, v17, v13

    .line 503
    .line 504
    .line 505
    invoke-static {v2, v11, v15, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 506
    .line 507
    add-int/lit8 v13, v13, 0x1

    .line 508
    .line 509
    move-object/from16 v11, v32

    .line 510
    goto :goto_10

    .line 511
    .line 512
    :cond_10
    new-instance v1, Lcom/alibaba/fastjson2/function/impl/ToAny;

    .line 513
    .line 514
    move-object/from16 v11, v21

    .line 515
    .line 516
    .line 517
    invoke-direct {v1, v11, v10}, Lcom/alibaba/fastjson2/function/impl/ToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 518
    .line 519
    move/from16 v13, v16

    .line 520
    .line 521
    move-object/from16 v16, v0

    .line 522
    .line 523
    :goto_11
    const/16 v0, 0xc

    .line 524
    .line 525
    if-ge v13, v0, :cond_11

    .line 526
    .line 527
    aget-object v0, v17, v13

    .line 528
    .line 529
    .line 530
    invoke-static {v2, v0, v11, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 531
    .line 532
    add-int/lit8 v13, v13, 0x1

    .line 533
    goto :goto_11

    .line 534
    .line 535
    :cond_11
    new-instance v0, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    .line 536
    .line 537
    const/16 v1, 0x30

    .line 538
    .line 539
    .line 540
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 541
    move-result-object v1

    .line 542
    .line 543
    move-object/from16 v13, v20

    .line 544
    .line 545
    .line 546
    invoke-direct {v0, v13, v1}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 547
    .line 548
    .line 549
    invoke-static {v2, v6, v13, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 550
    .line 551
    new-instance v0, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    .line 552
    .line 553
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 554
    .line 555
    move-object/from16 v13, v25

    .line 556
    .line 557
    .line 558
    invoke-direct {v0, v13, v1}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 559
    .line 560
    .line 561
    invoke-static {v2, v6, v13, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 562
    .line 563
    new-instance v0, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    .line 564
    .line 565
    .line 566
    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 567
    move-result-object v1

    .line 568
    .line 569
    .line 570
    invoke-direct {v0, v3, v1}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 571
    .line 572
    .line 573
    invoke-static {v2, v6, v3, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 574
    .line 575
    new-instance v0, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    .line 576
    .line 577
    .line 578
    invoke-direct {v0, v15, v10}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 579
    .line 580
    .line 581
    invoke-static {v2, v6, v15, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 582
    .line 583
    new-instance v0, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    .line 584
    .line 585
    .line 586
    invoke-direct {v0, v8, v14}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 587
    .line 588
    .line 589
    invoke-static {v2, v6, v8, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 590
    .line 591
    new-instance v0, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    .line 592
    .line 593
    .line 594
    invoke-direct {v0, v9, v5}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 595
    .line 596
    .line 597
    invoke-static {v2, v6, v9, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 598
    .line 599
    new-instance v0, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    .line 600
    .line 601
    .line 602
    invoke-direct {v0, v7, v4}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 603
    .line 604
    .line 605
    invoke-static {v2, v6, v7, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 606
    .line 607
    new-instance v0, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    .line 608
    .line 609
    move-object/from16 v1, v16

    .line 610
    .line 611
    .line 612
    invoke-direct {v0, v12, v1}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 613
    .line 614
    .line 615
    invoke-static {v2, v6, v12, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 616
    .line 617
    new-instance v0, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    .line 618
    .line 619
    move-object/from16 v1, v19

    .line 620
    const/4 v3, 0x0

    .line 621
    .line 622
    .line 623
    invoke-direct {v0, v1, v3}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 624
    .line 625
    .line 626
    invoke-static {v2, v6, v1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 627
    .line 628
    new-instance v0, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    .line 629
    .line 630
    move-object/from16 v1, v24

    .line 631
    .line 632
    .line 633
    invoke-direct {v0, v1, v3}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 634
    .line 635
    .line 636
    invoke-static {v2, v6, v1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 637
    .line 638
    new-instance v0, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    .line 639
    .line 640
    move-object/from16 v4, v32

    .line 641
    .line 642
    .line 643
    invoke-direct {v0, v4, v3}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 644
    .line 645
    .line 646
    invoke-static {v2, v6, v4, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 647
    .line 648
    new-instance v0, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    .line 649
    .line 650
    move-object/from16 v4, v22

    .line 651
    .line 652
    .line 653
    invoke-direct {v0, v4, v3}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 654
    .line 655
    .line 656
    invoke-static {v2, v6, v4, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 657
    .line 658
    new-instance v0, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    .line 659
    .line 660
    move-object/from16 v4, v18

    .line 661
    .line 662
    .line 663
    invoke-direct {v0, v4, v3}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 664
    .line 665
    .line 666
    invoke-static {v2, v6, v4, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 667
    .line 668
    new-instance v0, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    .line 669
    .line 670
    move-object/from16 v4, v31

    .line 671
    .line 672
    .line 673
    invoke-direct {v0, v4, v3}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 674
    .line 675
    .line 676
    invoke-static {v2, v6, v4, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 677
    .line 678
    new-instance v0, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    .line 679
    .line 680
    move-object/from16 v4, v28

    .line 681
    .line 682
    .line 683
    invoke-direct {v0, v4, v3}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 684
    .line 685
    .line 686
    invoke-static {v2, v6, v4, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 687
    .line 688
    new-instance v0, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    .line 689
    .line 690
    move-object/from16 v4, v29

    .line 691
    .line 692
    .line 693
    invoke-direct {v0, v4, v3}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 694
    .line 695
    .line 696
    invoke-static {v2, v6, v4, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 697
    .line 698
    new-instance v0, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    .line 699
    .line 700
    move-object/from16 v4, v27

    .line 701
    .line 702
    .line 703
    invoke-direct {v0, v4, v3}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 704
    .line 705
    .line 706
    invoke-static {v2, v6, v4, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 707
    .line 708
    new-instance v0, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    .line 709
    .line 710
    move-object/from16 v5, v26

    .line 711
    .line 712
    .line 713
    invoke-direct {v0, v5, v3}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 714
    .line 715
    .line 716
    invoke-static {v2, v6, v5, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 717
    .line 718
    new-instance v0, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    .line 719
    .line 720
    .line 721
    invoke-direct {v0, v4, v3}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 722
    .line 723
    .line 724
    invoke-static {v2, v6, v11, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 725
    .line 726
    new-instance v0, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    .line 727
    .line 728
    const-class v4, Ljava/util/Collection;

    .line 729
    .line 730
    .line 731
    invoke-direct {v0, v4, v3}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 732
    .line 733
    .line 734
    invoke-static {v2, v6, v4, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 735
    .line 736
    new-instance v0, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    .line 737
    .line 738
    const-class v4, Ljava/util/List;

    .line 739
    .line 740
    .line 741
    invoke-direct {v0, v4, v3}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 742
    .line 743
    .line 744
    invoke-static {v2, v6, v4, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 745
    .line 746
    new-instance v0, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    .line 747
    .line 748
    const-class v4, Lcom/alibaba/fastjson2/JSONArray;

    .line 749
    .line 750
    .line 751
    invoke-direct {v0, v4, v3}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 752
    .line 753
    .line 754
    invoke-static {v2, v6, v4, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 755
    .line 756
    new-instance v0, Lcom/alibaba/fastjson2/reader/h1;

    .line 757
    .line 758
    .line 759
    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/h1;-><init>()V

    .line 760
    .line 761
    .line 762
    invoke-static {v2, v1, v13, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 763
    .line 764
    new-instance v0, Lcom/alibaba/fastjson2/reader/i1;

    .line 765
    .line 766
    .line 767
    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/i1;-><init>()V

    .line 768
    .line 769
    const-class v1, Ljava/util/UUID;

    .line 770
    .line 771
    .line 772
    invoke-static {v2, v6, v1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;

    .line 773
    return-object v2
.end method

.method public static synthetic c(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/reflect/Method;)V
    .locals 5

    .line 1
    .line 2
    const-string v0, "\'T\'"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p2, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 15
    move-result p2

    .line 16
    .line 17
    .line 18
    sparse-switch p2, :sswitch_data_0

    .line 19
    .line 20
    goto/16 :goto_2

    .line 21
    .line 22
    :sswitch_0
    const-string p2, "deserialize"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result p2

    .line 27
    .line 28
    if-eqz p2, :cond_6

    .line 29
    .line 30
    check-cast p0, Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    move-result p0

    .line 35
    .line 36
    if-nez p0, :cond_6

    .line 37
    const/4 p0, 0x1

    .line 38
    .line 39
    iput-boolean p0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->ignore:Z

    .line 40
    return-void

    .line 41
    .line 42
    :sswitch_1
    const-string p2, "deserializeUsing"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result p2

    .line 47
    .line 48
    if-eqz p2, :cond_6

    .line 49
    .line 50
    check-cast p0, Ljava/lang/Class;

    .line 51
    .line 52
    const-class p2, Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 56
    move-result p2

    .line 57
    .line 58
    if-eqz p2, :cond_6

    .line 59
    .line 60
    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->readUsing:Ljava/lang/Class;

    .line 61
    return-void

    .line 62
    .line 63
    :sswitch_2
    const-string p2, "label"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result p2

    .line 68
    .line 69
    if-eqz p2, :cond_6

    .line 70
    .line 71
    check-cast p0, Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 75
    move-result p2

    .line 76
    .line 77
    if-nez p2, :cond_6

    .line 78
    .line 79
    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->label:Ljava/lang/String;

    .line 80
    return-void

    .line 81
    .line 82
    :sswitch_3
    const-string p2, "name"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    move-result p2

    .line 87
    .line 88
    if-eqz p2, :cond_6

    .line 89
    .line 90
    check-cast p0, Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 94
    move-result p2

    .line 95
    .line 96
    if-nez p2, :cond_6

    .line 97
    .line 98
    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;

    .line 99
    return-void

    .line 100
    .line 101
    :sswitch_4
    const-string p2, "alternateNames"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result p2

    .line 106
    .line 107
    if-eqz p2, :cond_6

    .line 108
    .line 109
    check-cast p0, [Ljava/lang/String;

    .line 110
    array-length p2, p0

    .line 111
    .line 112
    if-eqz p2, :cond_6

    .line 113
    .line 114
    iget-object p2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->alternateNames:[Ljava/lang/String;

    .line 115
    .line 116
    if-nez p2, :cond_0

    .line 117
    .line 118
    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->alternateNames:[Ljava/lang/String;

    .line 119
    return-void

    .line 120
    .line 121
    :cond_0
    new-instance p2, Ljava/util/LinkedHashSet;

    .line 122
    .line 123
    .line 124
    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 128
    move-result-object p0

    .line 129
    .line 130
    .line 131
    invoke-interface {p2, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 132
    .line 133
    iget-object p0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->alternateNames:[Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 137
    move-result-object p0

    .line 138
    .line 139
    .line 140
    invoke-interface {p2, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 141
    .line 142
    .line 143
    invoke-interface {p2}, Ljava/util/Set;->size()I

    .line 144
    move-result p0

    .line 145
    .line 146
    new-array p0, p0, [Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    invoke-interface {p2, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 150
    move-result-object p0

    .line 151
    .line 152
    check-cast p0, [Ljava/lang/String;

    .line 153
    .line 154
    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->alternateNames:[Ljava/lang/String;

    .line 155
    return-void

    .line 156
    .line 157
    :sswitch_5
    const-string p2, "defaultValue"

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    move-result p2

    .line 162
    .line 163
    if-eqz p2, :cond_6

    .line 164
    .line 165
    check-cast p0, Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 169
    move-result p2

    .line 170
    .line 171
    if-nez p2, :cond_6

    .line 172
    .line 173
    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->defaultValue:Ljava/lang/String;

    .line 174
    return-void

    .line 175
    .line 176
    :sswitch_6
    const-string p2, "parseFeatures"

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    move-result p2

    .line 181
    .line 182
    if-eqz p2, :cond_6

    .line 183
    .line 184
    check-cast p0, [Ljava/lang/Enum;

    .line 185
    array-length p2, p0

    .line 186
    const/4 v0, 0x0

    .line 187
    .line 188
    :goto_0
    if-ge v0, p2, :cond_6

    .line 189
    .line 190
    aget-object v1, p0, v0

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 194
    move-result-object v1

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 198
    move-result v2

    .line 199
    .line 200
    .line 201
    const v3, -0x35496aab    # -5982890.5f

    .line 202
    .line 203
    if-eq v2, v3, :cond_3

    .line 204
    .line 205
    .line 206
    const v3, -0xbf831a8

    .line 207
    .line 208
    if-eq v2, v3, :cond_2

    .line 209
    .line 210
    .line 211
    const v3, 0x778dede2

    .line 212
    .line 213
    if-eq v2, v3, :cond_1

    .line 214
    goto :goto_1

    .line 215
    .line 216
    :cond_1
    const-string v2, "InitStringFieldAsEmpty"

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    move-result v1

    .line 221
    .line 222
    if-eqz v1, :cond_4

    .line 223
    .line 224
    iget-wide v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 225
    .line 226
    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 227
    .line 228
    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 229
    or-long/2addr v1, v3

    .line 230
    .line 231
    iput-wide v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 232
    goto :goto_1

    .line 233
    .line 234
    :cond_2
    const-string v2, "SupportAutoType"

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    move-result v1

    .line 239
    .line 240
    if-eqz v1, :cond_4

    .line 241
    .line 242
    iget-wide v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 243
    .line 244
    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 245
    .line 246
    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 247
    or-long/2addr v1, v3

    .line 248
    .line 249
    iput-wide v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 250
    goto :goto_1

    .line 251
    .line 252
    :cond_3
    const-string v2, "SupportArrayToBean"

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 256
    move-result v1

    .line 257
    .line 258
    if-eqz v1, :cond_4

    .line 259
    .line 260
    iget-wide v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 261
    .line 262
    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportArrayToBean:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 263
    .line 264
    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 265
    or-long/2addr v1, v3

    .line 266
    .line 267
    iput-wide v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 268
    .line 269
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 270
    goto :goto_0

    .line 271
    .line 272
    :sswitch_7
    const-string p2, "ordinal"

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 276
    move-result p2

    .line 277
    .line 278
    if-eqz p2, :cond_6

    .line 279
    .line 280
    check-cast p0, Ljava/lang/Integer;

    .line 281
    .line 282
    .line 283
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 284
    move-result p2

    .line 285
    .line 286
    if-eqz p2, :cond_6

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 290
    move-result p0

    .line 291
    .line 292
    iput p0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    .line 293
    return-void

    .line 294
    .line 295
    :sswitch_8
    const-string p2, "format"

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 299
    move-result p2

    .line 300
    .line 301
    if-eqz p2, :cond_6

    .line 302
    .line 303
    check-cast p0, Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 307
    move-result p2

    .line 308
    .line 309
    if-nez p2, :cond_6

    .line 310
    .line 311
    .line 312
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 313
    move-result-object p0

    .line 314
    .line 315
    const/16 p2, 0x54

    .line 316
    .line 317
    .line 318
    invoke-virtual {p0, p2}, Ljava/lang/String;->indexOf(I)I

    .line 319
    move-result p2

    .line 320
    const/4 v1, -0x1

    .line 321
    .line 322
    if-eq p2, v1, :cond_5

    .line 323
    .line 324
    .line 325
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 326
    move-result p2

    .line 327
    .line 328
    if-nez p2, :cond_5

    .line 329
    .line 330
    const-string p2, "T"

    .line 331
    .line 332
    .line 333
    invoke-virtual {p0, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 334
    move-result-object p0

    .line 335
    .line 336
    :cond_5
    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->format:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    :catchall_0
    :cond_6
    :goto_2
    return-void

    .line 338
    nop

    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    :sswitch_data_0
    .sparse-switch
        -0x4ba00809 -> :sswitch_8
        -0x47f1458f -> :sswitch_7
        -0x4000fff0 -> :sswitch_6
        -0x27497450 -> :sswitch_5
        -0xd631d12 -> :sswitch_4
        0x337a8b -> :sswitch_3
        0x61f7ef4 -> :sswitch_2
        0x3ecb2845 -> :sswitch_1
        0x6820db7f -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic d(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getCreator(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    .line 4
    return-void
.end method

.method public static synthetic e(Ljava/lang/String;)Ljava/net/URL;
    .locals 2

    .line 1
    .line 2
    :try_start_0
    new-instance v0, Ljava/net/URL;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    return-object v0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    .line 9
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 10
    .line 11
    const-string v1, "read URL error"

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    throw v0
.end method

.method public static synthetic f(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/reflect/Method;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p3, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 16
    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    const-class v1, Ljava/lang/Void;

    .line 19
    .line 20
    const-class v2, Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 21
    const/4 v3, 0x0

    .line 22
    .line 23
    .line 24
    sparse-switch p3, :sswitch_data_0

    .line 25
    .line 26
    goto/16 :goto_8

    .line 27
    .line 28
    :sswitch_0
    :try_start_1
    const-string p3, "seeAlso"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result p3

    .line 33
    .line 34
    if-eqz p3, :cond_9

    .line 35
    .line 36
    check-cast p1, [Ljava/lang/Class;

    .line 37
    array-length p3, p1

    .line 38
    .line 39
    if-eqz p3, :cond_9

    .line 40
    .line 41
    iput-object p1, p2, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlso:[Ljava/lang/Class;

    .line 42
    array-length p3, p1

    .line 43
    .line 44
    new-array p3, p3, [Ljava/lang/String;

    .line 45
    .line 46
    iput-object p3, p2, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlsoNames:[Ljava/lang/String;

    .line 47
    :goto_0
    array-length p3, p1

    .line 48
    .line 49
    if-ge v3, p3, :cond_2

    .line 50
    .line 51
    aget-object p3, p1, v3

    .line 52
    .line 53
    new-instance v0, Lcom/alibaba/fastjson2/codec/BeanInfo;

    .line 54
    .line 55
    .line 56
    invoke-direct {v0}, Lcom/alibaba/fastjson2/codec/BeanInfo;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->processSeeAlsoAnnotation(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V

    .line 60
    .line 61
    iget-object v0, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    .line 62
    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 67
    move-result v1

    .line 68
    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    .line 72
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    :cond_1
    iget-object p3, p2, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlsoNames:[Ljava/lang/String;

    .line 76
    .line 77
    aput-object v0, p3, v3

    .line 78
    .line 79
    add-int/lit8 v3, v3, 0x1

    .line 80
    goto :goto_0

    .line 81
    .line 82
    :cond_2
    iget-wide p0, p2, Lcom/alibaba/fastjson2/codec/BeanInfo;->readerFeatures:J

    .line 83
    .line 84
    sget-object p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 85
    .line 86
    iget-wide v0, p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 87
    or-long/2addr p0, v0

    .line 88
    .line 89
    iput-wide p0, p2, Lcom/alibaba/fastjson2/codec/BeanInfo;->readerFeatures:J

    .line 90
    return-void

    .line 91
    .line 92
    :sswitch_1
    const-string p0, "ignores"

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result p0

    .line 97
    .line 98
    if-eqz p0, :cond_9

    .line 99
    .line 100
    check-cast p1, [Ljava/lang/String;

    .line 101
    array-length p0, p1

    .line 102
    .line 103
    if-lez p0, :cond_9

    .line 104
    .line 105
    iput-object p1, p2, Lcom/alibaba/fastjson2/codec/BeanInfo;->ignores:[Ljava/lang/String;

    .line 106
    return-void

    .line 107
    .line 108
    :sswitch_2
    const-string p0, "autoTypeCheckHandler"

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    move-result p0

    .line 113
    .line 114
    if-eqz p0, :cond_9

    .line 115
    .line 116
    goto/16 :goto_4

    .line 117
    .line 118
    :sswitch_3
    const-string p0, "deserializeFeatures"

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    move-result p0

    .line 123
    .line 124
    if-eqz p0, :cond_9

    .line 125
    .line 126
    check-cast p1, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 127
    :goto_1
    array-length p0, p1

    .line 128
    .line 129
    if-ge v3, p0, :cond_9

    .line 130
    .line 131
    iget-wide v0, p2, Lcom/alibaba/fastjson2/codec/BeanInfo;->readerFeatures:J

    .line 132
    .line 133
    aget-object p0, p1, v3

    .line 134
    .line 135
    iget-wide v4, p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 136
    or-long/2addr v0, v4

    .line 137
    .line 138
    iput-wide v0, p2, Lcom/alibaba/fastjson2/codec/BeanInfo;->readerFeatures:J

    .line 139
    .line 140
    add-int/lit8 v3, v3, 0x1

    .line 141
    goto :goto_1

    .line 142
    .line 143
    :sswitch_4
    const-string p0, "deserializeUsing"

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    move-result p0

    .line 148
    .line 149
    if-eqz p0, :cond_9

    .line 150
    .line 151
    check-cast p1, Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 155
    move-result p0

    .line 156
    .line 157
    if-eqz p0, :cond_9

    .line 158
    .line 159
    iput-object p1, p2, Lcom/alibaba/fastjson2/codec/BeanInfo;->deserializer:Ljava/lang/Class;

    .line 160
    return-void

    .line 161
    .line 162
    :sswitch_5
    const-string p3, "builder"

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    move-result p3

    .line 167
    .line 168
    if-eqz p3, :cond_9

    .line 169
    .line 170
    check-cast p1, Ljava/lang/Class;

    .line 171
    .line 172
    sget-object p3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 173
    .line 174
    if-eq p1, p3, :cond_9

    .line 175
    .line 176
    if-eq p1, v1, :cond_9

    .line 177
    .line 178
    iput-object p1, p2, Lcom/alibaba/fastjson2/codec/BeanInfo;->builder:Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 182
    move-result-object p3

    .line 183
    array-length v0, p3

    .line 184
    .line 185
    :goto_2
    if-ge v3, v0, :cond_5

    .line 186
    .line 187
    aget-object v1, p3, v3

    .line 188
    .line 189
    .line 190
    invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 191
    move-result-object v2

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 195
    move-result-object v4

    .line 196
    .line 197
    const-string v5, "com.alibaba.fastjson.annotation.JSONPOJOBuilder"

    .line 198
    .line 199
    .line 200
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    move-result v4

    .line 202
    .line 203
    if-eqz v4, :cond_3

    .line 204
    .line 205
    .line 206
    invoke-direct {p0, p2, p1, v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getBeanInfo1xJSONPOJOBuilder(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    .line 207
    goto :goto_3

    .line 208
    .line 209
    :cond_3
    const-class v1, Lcom/alibaba/fastjson2/annotation/JSONBuilder;

    .line 210
    .line 211
    .line 212
    invoke-static {p1, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->findAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 213
    move-result-object v1

    .line 214
    .line 215
    check-cast v1, Lcom/alibaba/fastjson2/annotation/JSONBuilder;

    .line 216
    .line 217
    if-eqz v1, :cond_4

    .line 218
    .line 219
    .line 220
    invoke-interface {v1}, Lcom/alibaba/fastjson2/annotation/JSONBuilder;->buildMethod()Ljava/lang/String;

    .line 221
    move-result-object v2

    .line 222
    .line 223
    .line 224
    invoke-static {p1, v2}, Lcom/alibaba/fastjson2/util/BeanUtils;->buildMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 225
    move-result-object v2

    .line 226
    .line 227
    iput-object v2, p2, Lcom/alibaba/fastjson2/codec/BeanInfo;->buildMethod:Ljava/lang/reflect/Method;

    .line 228
    .line 229
    .line 230
    invoke-interface {v1}, Lcom/alibaba/fastjson2/annotation/JSONBuilder;->withPrefix()Ljava/lang/String;

    .line 231
    move-result-object v1

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 235
    move-result v2

    .line 236
    .line 237
    if-nez v2, :cond_4

    .line 238
    .line 239
    iput-object v1, p2, Lcom/alibaba/fastjson2/codec/BeanInfo;->builderWithPrefix:Ljava/lang/String;

    .line 240
    .line 241
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 242
    goto :goto_2

    .line 243
    .line 244
    :cond_5
    iget-object p0, p2, Lcom/alibaba/fastjson2/codec/BeanInfo;->buildMethod:Ljava/lang/reflect/Method;

    .line 245
    .line 246
    if-nez p0, :cond_6

    .line 247
    .line 248
    const-string p0, "build"

    .line 249
    .line 250
    .line 251
    invoke-static {p1, p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->buildMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 252
    move-result-object p0

    .line 253
    .line 254
    iput-object p0, p2, Lcom/alibaba/fastjson2/codec/BeanInfo;->buildMethod:Ljava/lang/reflect/Method;

    .line 255
    .line 256
    :cond_6
    iget-object p0, p2, Lcom/alibaba/fastjson2/codec/BeanInfo;->buildMethod:Ljava/lang/reflect/Method;

    .line 257
    .line 258
    if-nez p0, :cond_9

    .line 259
    .line 260
    const-string p0, "create"

    .line 261
    .line 262
    .line 263
    invoke-static {p1, p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->buildMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 264
    move-result-object p0

    .line 265
    .line 266
    iput-object p0, p2, Lcom/alibaba/fastjson2/codec/BeanInfo;->buildMethod:Ljava/lang/reflect/Method;

    .line 267
    return-void

    .line 268
    .line 269
    :sswitch_6
    const-string p0, "rootName"

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    move-result p0

    .line 274
    .line 275
    if-eqz p0, :cond_9

    .line 276
    .line 277
    check-cast p1, Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 281
    move-result p0

    .line 282
    .line 283
    if-nez p0, :cond_9

    .line 284
    .line 285
    iput-object p1, p2, Lcom/alibaba/fastjson2/codec/BeanInfo;->rootName:Ljava/lang/String;

    .line 286
    return-void

    .line 287
    .line 288
    :sswitch_7
    const-string p0, "autoTypeBeforeHandler"

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    move-result p0

    .line 293
    .line 294
    if-eqz p0, :cond_9

    .line 295
    .line 296
    :goto_4
    check-cast p1, Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    .line 298
    const-class p0, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    .line 299
    .line 300
    if-eq p1, p0, :cond_9

    .line 301
    .line 302
    .line 303
    :try_start_2
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 304
    move-result p0

    .line 305
    .line 306
    if-eqz p0, :cond_9

    .line 307
    .line 308
    iput-object p1, p2, Lcom/alibaba/fastjson2/codec/BeanInfo;->autoTypeBeforeHandler:Ljava/lang/Class;

    .line 309
    return-void

    .line 310
    .line 311
    :sswitch_8
    const-string p0, "seeAlsoDefault"

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    move-result p0

    .line 316
    .line 317
    if-eqz p0, :cond_9

    .line 318
    move-object p0, p1

    .line 319
    .line 320
    check-cast p0, Ljava/lang/Class;

    .line 321
    .line 322
    if-eq p0, v1, :cond_7

    .line 323
    .line 324
    iput-object p0, p2, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlsoDefault:Ljava/lang/Class;

    .line 325
    goto :goto_5

    .line 326
    .line 327
    :sswitch_9
    const-string p0, "typeName"

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 331
    move-result p0

    .line 332
    .line 333
    if-eqz p0, :cond_9

    .line 334
    .line 335
    check-cast p1, Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 339
    move-result p0

    .line 340
    .line 341
    if-nez p0, :cond_9

    .line 342
    .line 343
    iput-object p1, p2, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    .line 344
    return-void

    .line 345
    .line 346
    :sswitch_a
    const-string p0, "typeKey"

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 350
    move-result p0

    .line 351
    .line 352
    if-eqz p0, :cond_9

    .line 353
    .line 354
    :cond_7
    :goto_5
    check-cast p1, Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 358
    move-result p0

    .line 359
    .line 360
    if-nez p0, :cond_9

    .line 361
    .line 362
    iput-object p1, p2, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    .line 363
    return-void

    .line 364
    .line 365
    :sswitch_b
    const-string p0, "orders"

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 369
    move-result p0

    .line 370
    .line 371
    if-eqz p0, :cond_9

    .line 372
    .line 373
    check-cast p1, [Ljava/lang/String;

    .line 374
    array-length p0, p1

    .line 375
    .line 376
    if-eqz p0, :cond_9

    .line 377
    .line 378
    iput-object p1, p2, Lcom/alibaba/fastjson2/codec/BeanInfo;->orders:[Ljava/lang/String;

    .line 379
    return-void

    .line 380
    .line 381
    :sswitch_c
    const-string p0, "naming"

    .line 382
    .line 383
    .line 384
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 385
    move-result p0

    .line 386
    .line 387
    if-eqz p0, :cond_9

    .line 388
    .line 389
    check-cast p1, Ljava/lang/Enum;

    .line 390
    .line 391
    .line 392
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 393
    move-result-object p0

    .line 394
    .line 395
    iput-object p0, p2, Lcom/alibaba/fastjson2/codec/BeanInfo;->namingStrategy:Ljava/lang/String;

    .line 396
    return-void

    .line 397
    .line 398
    :sswitch_d
    const-string p0, "parseFeatures"

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 402
    move-result p0

    .line 403
    .line 404
    if-eqz p0, :cond_9

    .line 405
    .line 406
    check-cast p1, [Ljava/lang/Enum;

    .line 407
    :goto_6
    array-length p0, p1

    .line 408
    .line 409
    if-ge v3, p0, :cond_9

    .line 410
    .line 411
    aget-object p0, p1, v3

    .line 412
    .line 413
    .line 414
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 415
    move-result-object p0

    .line 416
    .line 417
    .line 418
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 419
    move-result p3

    .line 420
    .line 421
    .line 422
    sparse-switch p3, :sswitch_data_1

    .line 423
    goto :goto_7

    .line 424
    .line 425
    :sswitch_e
    const-string p3, "InitStringFieldAsEmpty"

    .line 426
    .line 427
    .line 428
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 429
    move-result p0

    .line 430
    .line 431
    if-eqz p0, :cond_8

    .line 432
    .line 433
    iget-wide v0, p2, Lcom/alibaba/fastjson2/codec/BeanInfo;->readerFeatures:J

    .line 434
    .line 435
    sget-object p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 436
    .line 437
    iget-wide v4, p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 438
    or-long/2addr v0, v4

    .line 439
    .line 440
    iput-wide v0, p2, Lcom/alibaba/fastjson2/codec/BeanInfo;->readerFeatures:J

    .line 441
    goto :goto_7

    .line 442
    .line 443
    :sswitch_f
    const-string p3, "SupportAutoType"

    .line 444
    .line 445
    .line 446
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 447
    move-result p0

    .line 448
    .line 449
    if-eqz p0, :cond_8

    .line 450
    .line 451
    iget-wide v0, p2, Lcom/alibaba/fastjson2/codec/BeanInfo;->readerFeatures:J

    .line 452
    .line 453
    sget-object p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 454
    .line 455
    iget-wide v4, p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 456
    or-long/2addr v0, v4

    .line 457
    .line 458
    iput-wide v0, p2, Lcom/alibaba/fastjson2/codec/BeanInfo;->readerFeatures:J

    .line 459
    goto :goto_7

    .line 460
    .line 461
    :sswitch_10
    const-string p3, "SupportArrayToBean"

    .line 462
    .line 463
    .line 464
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 465
    move-result p0

    .line 466
    .line 467
    if-eqz p0, :cond_8

    .line 468
    .line 469
    iget-wide v0, p2, Lcom/alibaba/fastjson2/codec/BeanInfo;->readerFeatures:J

    .line 470
    .line 471
    sget-object p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportArrayToBean:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 472
    .line 473
    iget-wide v4, p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 474
    or-long/2addr v0, v4

    .line 475
    .line 476
    iput-wide v0, p2, Lcom/alibaba/fastjson2/codec/BeanInfo;->readerFeatures:J

    .line 477
    goto :goto_7

    .line 478
    .line 479
    :sswitch_11
    const-string p3, "TrimStringFieldValue"

    .line 480
    .line 481
    .line 482
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 483
    move-result p0

    .line 484
    .line 485
    :cond_8
    :goto_7
    add-int/lit8 v3, v3, 0x1

    .line 486
    goto :goto_6

    .line 487
    .line 488
    :sswitch_12
    const-string p0, "deserializer"

    .line 489
    .line 490
    .line 491
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 492
    move-result p0

    .line 493
    .line 494
    if-eqz p0, :cond_9

    .line 495
    .line 496
    check-cast p1, Ljava/lang/Class;

    .line 497
    .line 498
    .line 499
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 500
    move-result p0

    .line 501
    .line 502
    if-eqz p0, :cond_9

    .line 503
    .line 504
    iput-object p1, p2, Lcom/alibaba/fastjson2/codec/BeanInfo;->deserializer:Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 505
    :catchall_0
    :cond_9
    :goto_8
    return-void

    .line 506
    nop

    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    :sswitch_data_0
    .sparse-switch
        -0x64056b2d -> :sswitch_12
        -0x4000fff0 -> :sswitch_d
        -0x3ec0df78 -> :sswitch_c
        -0x3c209d1b -> :sswitch_b
        -0x32d96b3b -> :sswitch_a
        -0x2852af1b -> :sswitch_9
        -0x24dcc1d9 -> :sswitch_8
        -0x19c7a83e -> :sswitch_7
        -0x9f4d173 -> :sswitch_6
        0xdc3ef9b -> :sswitch_5
        0x3ecb2845 -> :sswitch_4
        0x539034dc -> :sswitch_3
        0x65b7914b -> :sswitch_2
        0x6873bce1 -> :sswitch_1
        0x75748aba -> :sswitch_0
    .end sparse-switch

    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    :sswitch_data_1
    .sparse-switch
        -0x5f9ef016 -> :sswitch_11
        -0x35496aab -> :sswitch_10
        -0xbf831a8 -> :sswitch_f
        0x778dede2 -> :sswitch_e
    .end sparse-switch
.end method

.method public static synthetic g(Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private getBeanInfo1xJSONPOJOBuilder(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/codec/BeanInfo;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/reader/v0;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p3, p1, p2}, Lcom/alibaba/fastjson2/reader/v0;-><init>(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p4, v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->annotationMethods(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V

    .line 9
    return-void
.end method

.method private getCreator(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;Ljava/lang/reflect/Constructor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/codec/BeanInfo;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Constructor;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 3
    :cond_0
    invoke-virtual {p3}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 4
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v4, v0, v2

    .line 5
    invoke-interface {v4}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v5

    .line 6
    const-class v6, Lcom/alibaba/fastjson2/annotation/JSONCreator;

    invoke-static {v4, v6}, Lcom/alibaba/fastjson2/util/BeanUtils;->findAnnotation(Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson2/annotation/JSONCreator;

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    .line 7
    invoke-interface {v6}, Lcom/alibaba/fastjson2/annotation/JSONCreator;->parameterNames()[Ljava/lang/String;

    move-result-object v3

    .line 8
    array-length v8, v3

    if-eqz v8, :cond_1

    .line 9
    iput-object v3, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->createParameterNames:[Ljava/lang/String;

    :cond_1
    move v3, v7

    if-ne v6, v4, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 11
    const-string v8, "com.alibaba.fastjson.annotation.JSONCreator"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "com.alibaba.fastjson2.annotation.JSONCreator"

    .line 12
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 13
    :cond_3
    new-instance v3, Lcom/alibaba/fastjson2/reader/f1;

    invoke-direct {v3, v4, p1}, Lcom/alibaba/fastjson2/reader/f1;-><init>(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;)V

    invoke-static {v5, v3}, Lcom/alibaba/fastjson2/util/BeanUtils;->annotationMethods(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V

    move v3, v7

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-nez v3, :cond_6

    goto :goto_3

    .line 14
    :cond_6
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 p2, 0x0

    :goto_2
    if-eqz p2, :cond_7

    .line 15
    iput-object p2, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    :cond_7
    :goto_3
    return-void
.end method

.method private getCreator(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/codec/BeanInfo;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    .line 16
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Enum;

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    .line 17
    :cond_0
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    const-string v1, "values"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 20
    :cond_1
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 21
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v3

    move v5, v4

    :goto_0
    const/4 v7, 0x1

    if-ge v4, v2, :cond_4

    aget-object v6, v1, v4

    .line 22
    invoke-interface {v6}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v8

    .line 23
    const-class v9, Lcom/alibaba/fastjson2/annotation/JSONCreator;

    invoke-static {v6, v9}, Lcom/alibaba/fastjson2/util/BeanUtils;->findAnnotation(Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lcom/alibaba/fastjson2/annotation/JSONCreator;

    if-ne v9, v6, :cond_2

    goto :goto_1

    .line 24
    :cond_2
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.alibaba.fastjson.annotation.JSONCreator"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 25
    new-instance v5, Lcom/alibaba/fastjson2/reader/d1;

    invoke-direct {v5, v6, p1}, Lcom/alibaba/fastjson2/reader/d1;-><init>(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;)V

    invoke-static {v8, v5}, Lcom/alibaba/fastjson2/util/BeanUtils;->annotationMethods(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V

    move v5, v7

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move-object v6, v9

    goto :goto_0

    :cond_4
    if-eqz v6, :cond_6

    .line 26
    invoke-interface {v6}, Lcom/alibaba/fastjson2/annotation/JSONCreator;->parameterNames()[Ljava/lang/String;

    move-result-object v1

    .line 27
    array-length v2, v1

    if-eqz v2, :cond_5

    .line 28
    iput-object v1, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->createParameterNames:[Ljava/lang/String;

    :cond_5
    move v5, v7

    :cond_6
    if-nez v5, :cond_7

    goto :goto_2

    .line 29
    :cond_7
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v3, :cond_8

    .line 30
    iput-object v3, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->createMethod:Ljava/lang/reflect/Method;

    :cond_8
    :goto_2
    return-void
.end method

.method private getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Lcom/alibaba/fastjson2/annotation/JSONField;)V
    .locals 10

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 61
    :cond_0
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 63
    iput-object v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;

    .line 64
    :cond_1
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->format()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 66
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x54

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const-string v1, "\'T\'"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 68
    const-string v2, "T"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_2
    iput-object v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->format:Ljava/lang/String;

    .line 70
    :cond_3
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 72
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 73
    iput-object v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->label:Ljava/lang/String;

    .line 74
    :cond_4
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->defaultValue()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 76
    iput-object v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->defaultValue:Ljava/lang/String;

    .line 77
    :cond_5
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->locale()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_6

    .line 79
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 80
    array-length v1, v0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_6

    .line 81
    new-instance v1, Ljava/util/Locale;

    aget-object v4, v0, v2

    aget-object v0, v0, v3

    invoke-direct {v1, v4, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->locale:Ljava/util/Locale;

    .line 82
    :cond_6
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->alternateNames()[Ljava/lang/String;

    move-result-object v0

    .line 83
    array-length v1, v0

    if-eqz v1, :cond_8

    .line 84
    iget-object v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->alternateNames:[Ljava/lang/String;

    if-nez v1, :cond_7

    .line 85
    iput-object v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->alternateNames:[Ljava/lang/String;

    goto :goto_0

    .line 86
    :cond_7
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 87
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->alternateNames:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 89
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->alternateNames:[Ljava/lang/String;

    .line 90
    :cond_8
    :goto_0
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->ignore:Z

    if-nez v0, :cond_9

    .line 91
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->deserialize()Z

    move-result v0

    xor-int/2addr v0, v3

    iput-boolean v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->ignore:Z

    .line 92
    :cond_9
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->deserializeFeatures()[Lcom/alibaba/fastjson2/JSONReader$Feature;

    move-result-object v0

    array-length v1, v0

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_b

    aget-object v5, v0, v4

    .line 93
    iget-wide v6, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    iget-wide v8, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    or-long/2addr v6, v8

    iput-wide v6, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 94
    iget-boolean v6, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->ignore:Z

    if-eqz v6, :cond_a

    sget-object v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    if-ne v5, v6, :cond_a

    .line 95
    iput-boolean v2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->ignore:Z

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 96
    :cond_b
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->ordinal()I

    move-result v0

    if-eqz v0, :cond_c

    .line 97
    iput v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    .line 98
    :cond_c
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->value()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 99
    iget-wide v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    const-wide/high16 v4, 0x1000000000000L

    or-long/2addr v0, v4

    iput-wide v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 100
    :cond_d
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->unwrapped()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 101
    iget-wide v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    const-wide/high16 v4, 0x2000000000000L

    or-long/2addr v0, v4

    iput-wide v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 102
    :cond_e
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->required()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 103
    iput-boolean v3, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->required:Z

    .line 104
    :cond_f
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->deserializeUsing()Ljava/lang/Class;

    move-result-object v0

    .line 105
    const-class v1, Lcom/alibaba/fastjson2/reader/ObjectReader;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 106
    iput-object v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->readUsing:Ljava/lang/Class;

    .line 107
    :cond_10
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->arrayToMapKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    .line 109
    iput-object v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->arrayToMapKey:Ljava/lang/String;

    .line 110
    :cond_11
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->arrayToMapDuplicateHandler()Ljava/lang/Class;

    move-result-object p2

    .line 111
    const-class v0, Ljava/lang/Void;

    if-eq p2, v0, :cond_12

    .line 112
    iput-object p2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->arrayToMapDuplicateHandler:Ljava/lang/Class;

    :cond_12
    :goto_2
    return-void
.end method

.method private getObjectReaderModule(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 36

    move-object/from16 v0, p1

    .line 1
    const-class v2, Ljava/lang/String;

    if-eq v0, v2, :cond_0

    const-class v3, Ljava/lang/CharSequence;

    if-ne v0, v3, :cond_1

    :cond_0
    move-object/from16 v5, p0

    goto/16 :goto_21

    .line 2
    :cond_1
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_2

    const-class v3, Ljava/lang/Character;

    if-ne v0, v3, :cond_3

    :cond_2
    move-object/from16 v5, p0

    goto/16 :goto_20

    .line 3
    :cond_3
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_4

    const-class v3, Ljava/lang/Boolean;

    if-ne v0, v3, :cond_5

    :cond_4
    move-object/from16 v5, p0

    goto/16 :goto_1f

    .line 4
    :cond_5
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_6

    const-class v3, Ljava/lang/Byte;

    if-ne v0, v3, :cond_7

    :cond_6
    move-object/from16 v5, p0

    goto/16 :goto_1e

    .line 5
    :cond_7
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_8

    const-class v3, Ljava/lang/Short;

    if-ne v0, v3, :cond_9

    :cond_8
    move-object/from16 v5, p0

    goto/16 :goto_1d

    .line 6
    :cond_9
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_a

    const-class v4, Ljava/lang/Integer;

    if-ne v0, v4, :cond_b

    :cond_a
    move-object/from16 v5, p0

    goto/16 :goto_1c

    .line 7
    :cond_b
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v4, :cond_c

    const-class v4, Ljava/lang/Long;

    if-ne v0, v4, :cond_d

    :cond_c
    move-object/from16 v5, p0

    goto/16 :goto_1b

    .line 8
    :cond_d
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v5, :cond_e

    const-class v5, Ljava/lang/Float;

    if-ne v0, v5, :cond_f

    :cond_e
    move-object/from16 v5, p0

    goto/16 :goto_1a

    .line 9
    :cond_f
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v5, :cond_10

    const-class v5, Ljava/lang/Double;

    if-ne v0, v5, :cond_11

    :cond_10
    move-object/from16 v5, p0

    goto/16 :goto_19

    .line 10
    :cond_11
    const-class v5, Ljava/math/BigInteger;

    if-ne v0, v5, :cond_12

    .line 11
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplBigInteger;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplBigInteger;

    return-object v0

    .line 12
    :cond_12
    const-class v5, Ljava/math/BigDecimal;

    if-ne v0, v5, :cond_13

    .line 13
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplBigDecimal;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplBigDecimal;

    return-object v0

    .line 14
    :cond_13
    const-class v5, Ljava/lang/Number;

    if-ne v0, v5, :cond_14

    .line 15
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplNumber;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplNumber;

    return-object v0

    .line 16
    :cond_14
    const-class v5, Ljava/util/UUID;

    if-ne v0, v5, :cond_15

    .line 17
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplUUID;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplUUID;

    return-object v0

    .line 18
    :cond_15
    const-class v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-ne v0, v5, :cond_16

    .line 19
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromBoolean;

    new-instance v2, Lcom/alibaba/fastjson2/reader/o0;

    invoke-direct {v2}, Lcom/alibaba/fastjson2/reader/o0;-><init>()V

    invoke-direct {v0, v5, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromBoolean;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)V

    return-object v0

    .line 20
    :cond_16
    const-class v5, Ljava/net/URI;

    if-ne v0, v5, :cond_17

    .line 21
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromString;

    new-instance v2, Lcom/alibaba/fastjson2/reader/u0;

    invoke-direct {v2}, Lcom/alibaba/fastjson2/reader/u0;-><init>()V

    invoke-direct {v0, v5, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromString;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)V

    return-object v0

    .line 22
    :cond_17
    const-class v5, Ljava/nio/charset/Charset;

    if-ne v0, v5, :cond_18

    .line 23
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromString;

    new-instance v2, Lcom/alibaba/fastjson2/reader/w0;

    invoke-direct {v2}, Lcom/alibaba/fastjson2/reader/w0;-><init>()V

    invoke-direct {v0, v5, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromString;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)V

    return-object v0

    .line 24
    :cond_18
    const-class v5, Ljava/io/File;

    if-ne v0, v5, :cond_19

    .line 25
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromString;

    new-instance v2, Lcom/alibaba/fastjson2/reader/x0;

    invoke-direct {v2}, Lcom/alibaba/fastjson2/reader/x0;-><init>()V

    invoke-direct {v0, v5, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromString;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)V

    return-object v0

    .line 26
    :cond_19
    const-class v5, Ljava/net/URL;

    if-ne v0, v5, :cond_1a

    .line 27
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromString;

    new-instance v2, Lcom/alibaba/fastjson2/reader/y0;

    invoke-direct {v2}, Lcom/alibaba/fastjson2/reader/y0;-><init>()V

    invoke-direct {v0, v5, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromString;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)V

    return-object v0

    .line 28
    :cond_1a
    const-class v5, Ljava/util/regex/Pattern;

    if-ne v0, v5, :cond_1b

    .line 29
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromString;

    new-instance v2, Lcom/alibaba/fastjson2/reader/z0;

    invoke-direct {v2}, Lcom/alibaba/fastjson2/reader/z0;-><init>()V

    invoke-direct {v0, v5, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromString;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)V

    return-object v0

    .line 30
    :cond_1b
    const-class v5, Ljava/text/SimpleDateFormat;

    if-ne v0, v5, :cond_1c

    .line 31
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromString;

    new-instance v2, Lcom/alibaba/fastjson2/reader/t0;

    invoke-direct {v2}, Lcom/alibaba/fastjson2/reader/t0;-><init>()V

    invoke-direct {v0, v5, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromString;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)V

    return-object v0

    .line 32
    :cond_1c
    const-class v5, Ljava/lang/Class;

    if-ne v0, v5, :cond_1d

    .line 33
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplClass;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplClass;

    return-object v0

    .line 34
    :cond_1d
    const-class v5, Ljava/lang/reflect/Method;

    if-ne v0, v5, :cond_1e

    .line 35
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMethod;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMethod;-><init>()V

    return-object v0

    .line 36
    :cond_1e
    const-class v5, Ljava/lang/reflect/Field;

    if-ne v0, v5, :cond_1f

    .line 37
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplField;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplField;-><init>()V

    return-object v0

    .line 38
    :cond_1f
    const-class v5, Ljava/lang/reflect/Type;

    if-ne v0, v5, :cond_20

    .line 39
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplClass;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplClass;

    return-object v0

    .line 40
    :cond_20
    instance-of v5, v0, Ljava/lang/Class;

    if-eqz v5, :cond_21

    .line 41
    move-object v6, v0

    check-cast v6, Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 42
    :cond_21
    const-string v6, ""

    .line 43
    :goto_0
    const-class v7, Ljava/util/Map;

    if-eq v0, v7, :cond_22

    const-class v11, Ljava/util/AbstractMap;

    if-ne v0, v11, :cond_23

    :cond_22
    move-object/from16 v5, p0

    const/4 v9, 0x0

    goto/16 :goto_18

    .line 44
    :cond_23
    const-class v12, Ljava/util/concurrent/ConcurrentMap;

    const-class v13, Ljava/util/concurrent/ConcurrentHashMap;

    const-class v14, Ljava/lang/Object;

    if-eq v0, v12, :cond_24

    if-ne v0, v13, :cond_25

    :cond_24
    move-object/from16 v5, p0

    const/4 v9, 0x0

    goto/16 :goto_17

    .line 45
    :cond_25
    const-class v15, Ljava/util/concurrent/ConcurrentNavigableMap;

    const-class v8, Ljava/util/concurrent/ConcurrentSkipListMap;

    if-eq v0, v15, :cond_26

    if-ne v0, v8, :cond_27

    :cond_26
    move-object/from16 v5, p0

    const/4 v9, 0x0

    goto/16 :goto_16

    .line 46
    :cond_27
    const-class v9, Ljava/util/SortedMap;

    const-class v10, Ljava/util/TreeMap;

    if-eq v0, v9, :cond_28

    const-class v9, Ljava/util/NavigableMap;

    if-eq v0, v9, :cond_28

    if-ne v0, v10, :cond_29

    :cond_28
    move-object/from16 v5, p0

    goto/16 :goto_15

    .line 47
    :cond_29
    const-class v9, Ljava/util/Calendar;

    if-ne v0, v9, :cond_2a

    .line 48
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCalendar;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplCalendar;

    return-object v0

    .line 49
    :cond_2a
    const-class v9, Ljava/util/Date;

    if-ne v0, v9, :cond_2b

    .line 50
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;

    return-object v0

    .line 51
    :cond_2b
    const-class v9, Ljava/util/Locale;

    if-ne v0, v9, :cond_2c

    .line 52
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocale;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocale;

    return-object v0

    .line 53
    :cond_2c
    const-class v9, Ljava/util/Currency;

    if-ne v0, v9, :cond_2d

    .line 54
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCurrency;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplCurrency;

    return-object v0

    .line 55
    :cond_2d
    const-class v9, Lcom/alibaba/fastjson2/time/ZoneId;

    if-ne v0, v9, :cond_2e

    .line 56
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromString;

    new-instance v2, Lcom/alibaba/fastjson2/reader/a1;

    invoke-direct {v2}, Lcom/alibaba/fastjson2/reader/a1;-><init>()V

    invoke-direct {v0, v9, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromString;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)V

    return-object v0

    .line 57
    :cond_2e
    const-class v9, Ljava/util/TimeZone;

    if-ne v0, v9, :cond_2f

    .line 58
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromString;

    new-instance v2, Lcom/alibaba/fastjson2/reader/b1;

    invoke-direct {v2}, Lcom/alibaba/fastjson2/reader/b1;-><init>()V

    invoke-direct {v0, v9, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromString;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)V

    return-object v0

    .line 59
    :cond_2f
    const-class v9, [C

    if-ne v0, v9, :cond_30

    .line 60
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharValueArray;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharValueArray;

    return-object v0

    .line 61
    :cond_30
    const-class v9, [F

    if-ne v0, v9, :cond_31

    .line 62
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFloatValueArray;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplFloatValueArray;

    return-object v0

    .line 63
    :cond_31
    const-class v9, [D

    if-ne v0, v9, :cond_32

    .line 64
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDoubleValueArray;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplDoubleValueArray;

    return-object v0

    .line 65
    :cond_32
    const-class v9, [Z

    if-ne v0, v9, :cond_33

    .line 66
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplBoolValueArray;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplBoolValueArray;

    return-object v0

    .line 67
    :cond_33
    const-class v9, [B

    if-ne v0, v9, :cond_34

    .line 68
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;

    return-object v0

    .line 69
    :cond_34
    const-class v9, [S

    if-ne v0, v9, :cond_35

    .line 70
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt16ValueArray;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt16ValueArray;

    return-object v0

    .line 71
    :cond_35
    const-class v9, [I

    if-ne v0, v9, :cond_36

    .line 72
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32ValueArray;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32ValueArray;

    return-object v0

    .line 73
    :cond_36
    const-class v9, [J

    if-ne v0, v9, :cond_37

    .line 74
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt64ValueArray;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt64ValueArray;

    return-object v0

    .line 75
    :cond_37
    const-class v9, [Ljava/lang/Byte;

    if-ne v0, v9, :cond_38

    .line 76
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8Array;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8Array;

    return-object v0

    .line 77
    :cond_38
    const-class v9, [Ljava/lang/Short;

    if-ne v0, v9, :cond_39

    .line 78
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt16Array;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt16Array;

    return-object v0

    .line 79
    :cond_39
    const-class v9, [Ljava/lang/Integer;

    if-ne v0, v9, :cond_3a

    .line 80
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32Array;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32Array;

    return-object v0

    .line 81
    :cond_3a
    const-class v9, [Ljava/lang/Long;

    if-ne v0, v9, :cond_3b

    .line 82
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt64Array;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt64Array;

    return-object v0

    .line 83
    :cond_3b
    const-class v9, [Ljava/lang/Float;

    if-ne v0, v9, :cond_3c

    .line 84
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFloatArray;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplFloatArray;

    return-object v0

    .line 85
    :cond_3c
    const-class v9, [Ljava/lang/Double;

    if-ne v0, v9, :cond_3d

    .line 86
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDoubleArray;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplDoubleArray;

    return-object v0

    .line 87
    :cond_3d
    const-class v9, [Ljava/lang/Number;

    if-ne v0, v9, :cond_3e

    .line 88
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplNumberArray;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplNumberArray;

    return-object v0

    .line 89
    :cond_3e
    const-class v9, [Ljava/lang/String;

    if-ne v0, v9, :cond_3f

    .line 90
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplStringArray;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplStringArray;

    return-object v0

    .line 91
    :cond_3f
    const-class v9, Ljava/util/concurrent/atomic/AtomicInteger;

    if-ne v0, v9, :cond_40

    .line 92
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromInt;

    new-instance v2, Lcom/alibaba/fastjson2/reader/c1;

    invoke-direct {v2}, Lcom/alibaba/fastjson2/reader/c1;-><init>()V

    invoke-direct {v0, v9, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromInt;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/IntFunction;)V

    return-object v0

    .line 93
    :cond_40
    const-class v9, Ljava/util/concurrent/atomic/AtomicLong;

    if-ne v0, v9, :cond_41

    .line 94
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromLong;

    new-instance v2, Lcom/alibaba/fastjson2/reader/p0;

    invoke-direct {v2}, Lcom/alibaba/fastjson2/reader/p0;-><init>()V

    invoke-direct {v0, v9, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromLong;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/LongFunction;)V

    return-object v0

    .line 95
    :cond_41
    const-class v9, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    if-ne v0, v9, :cond_42

    .line 96
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32ValueArray;

    new-instance v2, Lcom/alibaba/fastjson2/reader/q0;

    invoke-direct {v2}, Lcom/alibaba/fastjson2/reader/q0;-><init>()V

    invoke-direct {v0, v9, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32ValueArray;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)V

    return-object v0

    .line 97
    :cond_42
    const-class v9, Ljava/util/concurrent/atomic/AtomicLongArray;

    if-ne v0, v9, :cond_43

    .line 98
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt64ValueArray;

    new-instance v2, Lcom/alibaba/fastjson2/reader/r0;

    invoke-direct {v2}, Lcom/alibaba/fastjson2/reader/r0;-><init>()V

    invoke-direct {v0, v9, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt64ValueArray;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)V

    return-object v0

    .line 99
    :cond_43
    const-class v9, Ljava/util/concurrent/atomic/AtomicReference;

    if-ne v0, v9, :cond_44

    .line 100
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplAtomicReference;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplAtomicReference;

    return-object v0

    :cond_44
    move-object/from16 v18, v3

    .line 101
    instance-of v3, v0, Lcom/alibaba/fastjson2/util/MultiType;

    if-eqz v3, :cond_45

    .line 102
    new-instance v2, Lcom/alibaba/fastjson2/reader/ObjectArrayReaderMultiType;

    check-cast v0, Lcom/alibaba/fastjson2/util/MultiType;

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/reader/ObjectArrayReaderMultiType;-><init>(Lcom/alibaba/fastjson2/util/MultiType;)V

    return-object v2

    .line 103
    :cond_45
    instance-of v3, v0, Lcom/alibaba/fastjson2/util/MapMultiValueType;

    if-eqz v3, :cond_46

    .line 104
    new-instance v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapMultiValueType;

    check-cast v0, Lcom/alibaba/fastjson2/util/MapMultiValueType;

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapMultiValueType;-><init>(Lcom/alibaba/fastjson2/util/MapMultiValueType;)V

    return-object v2

    .line 105
    :cond_46
    const-class v3, Ljava/lang/StringBuffer;

    move/from16 v19, v5

    const/16 v20, 0x0

    if-eq v0, v3, :cond_47

    const-class v3, Ljava/lang/StringBuilder;

    if-ne v0, v3, :cond_48

    :cond_47
    move-object/from16 v5, p0

    move-object v6, v2

    goto/16 :goto_14

    .line 106
    :cond_48
    const-class v3, Ljava/lang/Iterable;

    if-eq v0, v3, :cond_49

    const/16 v21, 0x1

    const-class v5, Ljava/util/Collection;

    if-eq v0, v5, :cond_49

    move-object/from16 v22, v6

    const-class v6, Ljava/util/List;

    if-eq v0, v6, :cond_49

    move-object/from16 v23, v4

    const-class v4, Ljava/util/AbstractCollection;

    if-eq v0, v4, :cond_49

    move-object/from16 v24, v2

    const-class v2, Ljava/util/AbstractList;

    if-eq v0, v2, :cond_49

    const-class v1, Ljava/util/ArrayList;

    if-ne v0, v1, :cond_4a

    :cond_49
    move-object/from16 v5, p0

    const-wide/16 v1, 0x0

    const/4 v9, 0x0

    goto/16 :goto_13

    :cond_4a
    move-object/from16 v25, v9

    .line 107
    const-class v9, Ljava/util/Queue;

    if-eq v0, v9, :cond_4b

    move-object/from16 v26, v9

    const-class v9, Ljava/util/Deque;

    if-eq v0, v9, :cond_4b

    move-object/from16 v27, v9

    const-class v9, Ljava/util/AbstractSequentialList;

    if-eq v0, v9, :cond_4b

    move-object/from16 v28, v9

    const-class v9, Ljava/util/LinkedList;

    if-ne v0, v9, :cond_4c

    :cond_4b
    move-object/from16 v5, p0

    const-wide/16 v1, 0x0

    const/4 v9, 0x0

    goto/16 :goto_12

    :cond_4c
    move-object/from16 v29, v9

    .line 108
    const-class v9, Ljava/util/Set;

    if-eq v0, v9, :cond_4d

    move-object/from16 v30, v9

    const-class v9, Ljava/util/AbstractSet;

    if-eq v0, v9, :cond_4d

    const-class v9, Ljava/util/EnumSet;

    if-ne v0, v9, :cond_4e

    :cond_4d
    move-object/from16 v5, p0

    const-wide/16 v1, 0x0

    const/4 v9, 0x0

    goto/16 :goto_11

    .line 109
    :cond_4e
    const-class v9, Ljava/util/NavigableSet;

    if-eq v0, v9, :cond_4f

    const-class v9, Ljava/util/SortedSet;

    if-ne v0, v9, :cond_50

    :cond_4f
    move-object/from16 v5, p0

    const-wide/16 v1, 0x0

    const/4 v9, 0x0

    goto/16 :goto_10

    .line 110
    :cond_50
    const-class v9, Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eq v0, v9, :cond_51

    const-class v9, Ljava/util/concurrent/ConcurrentSkipListSet;

    if-eq v0, v9, :cond_51

    const-class v9, Ljava/util/LinkedHashSet;

    if-eq v0, v9, :cond_51

    const-class v9, Ljava/util/HashSet;

    if-eq v0, v9, :cond_51

    move-object/from16 v31, v9

    const-class v9, Ljava/util/TreeSet;

    if-eq v0, v9, :cond_51

    move-object/from16 v32, v9

    const-class v9, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-ne v0, v9, :cond_52

    :cond_51
    move-object/from16 v5, p0

    const-wide/16 v1, 0x0

    const/4 v9, 0x0

    goto/16 :goto_f

    .line 111
    :cond_52
    sget-object v9, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_EMPTY_SET:Ljava/lang/Class;

    if-eq v0, v9, :cond_53

    sget-object v9, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_EMPTY_LIST:Ljava/lang/Class;

    if-eq v0, v9, :cond_53

    sget-object v9, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_SINGLETON:Ljava/lang/Class;

    if-eq v0, v9, :cond_53

    sget-object v9, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_SINGLETON_LIST:Ljava/lang/Class;

    if-eq v0, v9, :cond_53

    sget-object v9, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_ARRAYS_LIST:Ljava/lang/Class;

    if-eq v0, v9, :cond_53

    sget-object v9, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_COLLECTION:Ljava/lang/Class;

    if-eq v0, v9, :cond_53

    sget-object v9, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_LIST:Ljava/lang/Class;

    if-eq v0, v9, :cond_53

    sget-object v9, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_SET:Ljava/lang/Class;

    if-ne v0, v9, :cond_54

    :cond_53
    move-object/from16 v5, p0

    const-wide/16 v1, 0x0

    const/4 v9, 0x0

    goto/16 :goto_e

    .line 112
    :cond_54
    sget-object v9, Lcom/alibaba/fastjson2/util/TypeUtils;->CLASS_SINGLE_SET:Ljava/lang/Class;

    if-ne v0, v9, :cond_55

    const-wide/16 v1, 0x0

    const/4 v9, 0x0

    .line 113
    invoke-static {v0, v9, v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    :cond_55
    move-object/from16 v33, v1

    move-object/from16 v34, v2

    if-eq v0, v14, :cond_56

    .line 114
    const-class v1, Ljava/lang/Cloneable;

    if-eq v0, v1, :cond_56

    const-class v1, Ljava/io/Closeable;

    if-eq v0, v1, :cond_56

    const-class v1, Ljava/io/Serializable;

    if-eq v0, v1, :cond_56

    const-class v1, Ljava/lang/Comparable;

    if-ne v0, v1, :cond_57

    :cond_56
    move-object/from16 v5, p0

    goto/16 :goto_d

    .line 115
    :cond_57
    const-class v1, Ljava/util/Map$Entry;

    if-ne v0, v1, :cond_58

    .line 116
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;

    const/4 v9, 0x0

    invoke-direct {v0, v9, v9}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    return-object v0

    :cond_58
    const/4 v9, 0x0

    const/4 v1, 0x2

    if-eqz v19, :cond_5d

    .line 117
    move-object v2, v0

    check-cast v2, Ljava/lang/Class;

    .line 118
    invoke-virtual {v7, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v17

    if-eqz v17, :cond_59

    const-wide/16 v3, 0x0

    .line 119
    invoke-static {v9, v2, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    :cond_59
    move-object/from16 v19, v3

    move-object/from16 v35, v4

    const-wide/16 v3, 0x0

    .line 120
    invoke-virtual {v5, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_5a

    .line 121
    invoke-static {v2, v2, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 122
    :cond_5a
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 123
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, v14, :cond_5b

    .line 124
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectArrayReader;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectArrayReader;

    return-object v0

    .line 125
    :cond_5b
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectArrayTypedReader;

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/reader/ObjectArrayTypedReader;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 126
    :cond_5c
    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    iget-object v3, v3, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->creator:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    .line 127
    const-class v4, Ljava/lang/StackTraceElement;

    if-ne v2, v4, :cond_5e

    const/4 v4, 0x4

    .line 128
    :try_start_0
    new-array v4, v4, [Ljava/lang/Class;

    aput-object v24, v4, v20

    aput-object v24, v4, v21

    aput-object v24, v4, v1

    const/4 v9, 0x3

    aput-object v18, v4, v9

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 129
    const-string v4, "className"

    const-string v9, "methodName"

    const-string v14, "fileName"

    const-string v1, "lineNumber"

    filled-new-array {v4, v9, v14, v1}, [Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-virtual {v3, v2, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createObjectReaderNoneDefaultConstructor(Ljava/lang/reflect/Constructor;[Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :cond_5d
    move-object/from16 v19, v3

    move-object/from16 v35, v4

    .line 131
    :catchall_0
    :cond_5e
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_7f

    .line 132
    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 133
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 134
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 135
    array-length v3, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_67

    .line 136
    aget-object v3, v1, v20

    .line 137
    aget-object v4, v1, v21

    if-eq v2, v7, :cond_66

    if-eq v2, v11, :cond_66

    .line 138
    const-class v7, Ljava/util/HashMap;

    if-ne v2, v7, :cond_5f

    goto :goto_4

    :cond_5f
    if-eq v2, v12, :cond_65

    if-ne v2, v13, :cond_60

    goto :goto_3

    :cond_60
    if-eq v2, v15, :cond_64

    if-ne v2, v8, :cond_61

    goto :goto_2

    .line 139
    :cond_61
    const-class v7, Ljava/util/LinkedHashMap;

    if-eq v2, v7, :cond_63

    if-eq v2, v10, :cond_63

    const-class v7, Ljava/util/EnumMap;

    if-ne v2, v7, :cond_62

    goto :goto_1

    .line 140
    :cond_62
    const-class v7, Ljava/util/Map$Entry;

    if-ne v2, v7, :cond_67

    .line 141
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;

    invoke-direct {v0, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    return-object v0

    .line 142
    :cond_63
    :goto_1
    check-cast v2, Ljava/lang/Class;

    invoke-static {v2, v2, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->typedMap(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 143
    :cond_64
    :goto_2
    check-cast v2, Ljava/lang/Class;

    invoke-static {v2, v8, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->typedMap(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 144
    :cond_65
    :goto_3
    check-cast v2, Ljava/lang/Class;

    invoke-static {v2, v13, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->typedMap(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 145
    :cond_66
    :goto_4
    check-cast v2, Ljava/lang/Class;

    const-class v0, Ljava/util/HashMap;

    invoke-static {v2, v0, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->typedMap(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 146
    :cond_67
    array-length v3, v1

    move/from16 v4, v21

    if-ne v3, v4, :cond_72

    .line 147
    aget-object v1, v1, v20

    .line 148
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getMapping(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    move-object/from16 v4, v19

    if-eq v2, v4, :cond_7c

    if-eq v2, v5, :cond_7c

    if-eq v2, v6, :cond_7c

    move-object/from16 v4, v35

    if-eq v2, v4, :cond_7c

    move-object/from16 v4, v34

    if-eq v2, v4, :cond_7c

    move-object/from16 v4, v33

    if-eq v2, v4, :cond_68

    .line 149
    const-class v5, Ljava/util/Stack;

    if-ne v2, v5, :cond_69

    :cond_68
    move-object/from16 v5, p0

    move-object/from16 v7, v23

    move-object/from16 v6, v24

    goto/16 :goto_9

    :cond_69
    move-object/from16 v5, v26

    if-eq v2, v5, :cond_79

    move-object/from16 v4, v27

    if-eq v2, v4, :cond_79

    move-object/from16 v4, v28

    if-eq v2, v4, :cond_79

    move-object/from16 v4, v29

    if-ne v2, v4, :cond_6a

    move-object/from16 v5, p0

    move-object/from16 v7, v23

    move-object/from16 v6, v24

    goto/16 :goto_8

    :cond_6a
    move-object/from16 v5, v30

    if-eq v2, v5, :cond_6b

    .line 150
    const-class v4, Ljava/util/AbstractSet;

    if-eq v2, v4, :cond_6b

    const-class v4, Ljava/util/EnumSet;

    if-ne v2, v4, :cond_6c

    :cond_6b
    move-object/from16 v5, p0

    move-object/from16 v7, v23

    move-object/from16 v6, v24

    move-object/from16 v4, v31

    goto/16 :goto_7

    .line 151
    :cond_6c
    const-class v4, Ljava/util/NavigableSet;

    if-eq v2, v4, :cond_6d

    const-class v4, Ljava/util/SortedSet;

    if-ne v2, v4, :cond_6e

    :cond_6d
    move-object/from16 v5, p0

    move-object/from16 v7, v23

    move-object/from16 v6, v24

    move-object/from16 v4, v32

    goto :goto_6

    .line 152
    :cond_6e
    const-class v4, Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eq v2, v4, :cond_6f

    const-class v4, Ljava/util/concurrent/ConcurrentSkipListSet;

    if-eq v2, v4, :cond_6f

    const-class v4, Ljava/util/LinkedHashSet;

    if-eq v2, v4, :cond_6f

    move-object/from16 v4, v31

    if-eq v2, v4, :cond_6f

    move-object/from16 v4, v32

    if-eq v2, v4, :cond_6f

    const-class v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-ne v2, v4, :cond_70

    :cond_6f
    move-object/from16 v5, p0

    move-object/from16 v6, v24

    goto :goto_5

    :cond_70
    move-object/from16 v4, v25

    if-ne v2, v4, :cond_71

    .line 153
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplAtomicReference;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplAtomicReference;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0

    .line 154
    :cond_71
    instance-of v0, v1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_72

    move-object/from16 v5, p0

    .line 155
    invoke-direct {v5, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReaderModule(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    :cond_72
    move-object/from16 v5, p0

    const/4 v9, 0x0

    goto/16 :goto_a

    :goto_5
    if-ne v1, v6, :cond_73

    .line 156
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;

    check-cast v2, Ljava/lang/Class;

    invoke-direct {v0, v2, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    :cond_73
    move-object/from16 v7, v23

    if-ne v3, v7, :cond_74

    .line 157
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;

    check-cast v2, Ljava/lang/Class;

    invoke-direct {v0, v2, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    :cond_74
    const-wide/16 v1, 0x0

    const/4 v9, 0x0

    .line 158
    invoke-static {v0, v9, v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    :goto_6
    if-ne v1, v6, :cond_75

    .line 159
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;

    check-cast v2, Ljava/lang/Class;

    invoke-direct {v0, v2, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    :cond_75
    if-ne v3, v7, :cond_76

    .line 160
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;

    check-cast v2, Ljava/lang/Class;

    invoke-direct {v0, v2, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    :cond_76
    const-wide/16 v1, 0x0

    const/4 v9, 0x0

    .line 161
    invoke-static {v0, v9, v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    :goto_7
    if-ne v3, v6, :cond_77

    .line 162
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;

    check-cast v2, Ljava/lang/Class;

    invoke-direct {v0, v2, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    :cond_77
    if-ne v3, v7, :cond_78

    .line 163
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;

    check-cast v2, Ljava/lang/Class;

    invoke-direct {v0, v2, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    :cond_78
    const-wide/16 v1, 0x0

    const/4 v9, 0x0

    .line 164
    invoke-static {v0, v9, v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    :cond_79
    move-object/from16 v5, p0

    move-object/from16 v7, v23

    move-object/from16 v6, v24

    move-object/from16 v4, v29

    :goto_8
    if-ne v3, v6, :cond_7a

    .line 165
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;

    check-cast v2, Ljava/lang/Class;

    invoke-direct {v0, v2, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    :cond_7a
    if-ne v3, v7, :cond_7b

    .line 166
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;

    check-cast v2, Ljava/lang/Class;

    invoke-direct {v0, v2, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    :cond_7b
    const-wide/16 v1, 0x0

    const/4 v9, 0x0

    .line 167
    invoke-static {v0, v9, v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    :cond_7c
    move-object/from16 v5, p0

    move-object/from16 v7, v23

    move-object/from16 v6, v24

    move-object/from16 v4, v33

    :goto_9
    if-ne v3, v6, :cond_7d

    .line 168
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;

    check-cast v2, Ljava/lang/Class;

    invoke-direct {v0, v2, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    :cond_7d
    if-ne v3, v7, :cond_7e

    .line 169
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;

    check-cast v2, Ljava/lang/Class;

    invoke-direct {v0, v2, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    :cond_7e
    const-wide/16 v1, 0x0

    const/4 v9, 0x0

    .line 170
    invoke-static {v0, v9, v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    :goto_a
    return-object v9

    :cond_7f
    move-object/from16 v5, p0

    move-object/from16 v6, v24

    const/4 v4, 0x2

    .line 171
    instance-of v1, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_80

    .line 172
    new-instance v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplGenericArray;

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplGenericArray;-><init>(Ljava/lang/reflect/GenericArrayType;)V

    return-object v1

    .line 173
    :cond_80
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_81

    .line 174
    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/WildcardType;

    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 175
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_81

    .line 176
    aget-object v0, v1, v20

    invoke-direct {v5, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReaderModule(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 177
    :cond_81
    const-class v1, Ljava/lang/reflect/ParameterizedType;

    if-ne v0, v1, :cond_82

    .line 178
    const-class v0, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;

    invoke-static {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaders;->ofReflect(Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 179
    :cond_82
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_c

    :sswitch_0
    const-string v1, "java.util.RegularEnumSet"

    move-object/from16 v3, v22

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_83

    goto/16 :goto_c

    :cond_83
    const/4 v1, 0x7

    goto :goto_b

    :sswitch_1
    move-object/from16 v3, v22

    const-string v1, "java.net.InetSocketAddress"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_84

    goto :goto_c

    :cond_84
    const/4 v1, 0x6

    goto :goto_b

    :sswitch_2
    move-object/from16 v3, v22

    const-string v1, "java.text.SimpleDateFormat"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    goto :goto_c

    :cond_85
    const/4 v1, 0x5

    goto :goto_b

    :sswitch_3
    move-object/from16 v3, v22

    const-string v1, "java.sql.Timestamp"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_86

    goto :goto_c

    :cond_86
    const/4 v1, 0x4

    goto :goto_b

    :sswitch_4
    move-object/from16 v3, v22

    const-string v1, "java.sql.Time"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_87

    goto :goto_c

    :cond_87
    const/4 v1, 0x3

    :goto_b
    move v2, v1

    goto :goto_c

    :sswitch_5
    move-object/from16 v3, v22

    const-string v1, "java.sql.Date"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_88

    goto :goto_c

    :cond_88
    move v2, v4

    goto :goto_c

    :sswitch_6
    move-object/from16 v3, v22

    const-string v1, "java.net.InetAddress"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_89

    goto :goto_c

    :cond_89
    const/4 v2, 0x1

    goto :goto_c

    :sswitch_7
    move-object/from16 v3, v22

    const-string v1, "java.util.JumboEnumSet"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8a

    goto :goto_c

    :cond_8a
    move/from16 v2, v20

    :goto_c
    packed-switch v2, :pswitch_data_0

    const/4 v9, 0x0

    return-object v9

    .line 180
    :pswitch_0
    new-instance v1, Lcom/alibaba/fastjson2/reader/ObjectReaderMisc;

    check-cast v0, Ljava/lang/Class;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderMisc;-><init>(Ljava/lang/Class;)V

    return-object v1

    .line 181
    :pswitch_1
    check-cast v0, Ljava/lang/Class;

    new-instance v1, Lcom/alibaba/fastjson2/reader/t0;

    invoke-direct {v1}, Lcom/alibaba/fastjson2/reader/t0;-><init>()V

    invoke-static {v0, v6, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;->of(Ljava/lang/Class;Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;

    move-result-object v0

    return-object v0

    :pswitch_2
    const/4 v9, 0x0

    .line 182
    new-instance v0, Lcom/alibaba/fastjson2/util/JdbcSupport$TimestampReader;

    invoke-direct {v0, v9, v9}, Lcom/alibaba/fastjson2/util/JdbcSupport$TimestampReader;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0

    :pswitch_3
    const/4 v9, 0x0

    .line 183
    new-instance v0, Lcom/alibaba/fastjson2/util/JdbcSupport$TimeReader;

    invoke-direct {v0, v9, v9}, Lcom/alibaba/fastjson2/util/JdbcSupport$TimeReader;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0

    :pswitch_4
    const/4 v9, 0x0

    .line 184
    new-instance v0, Lcom/alibaba/fastjson2/util/JdbcSupport$DateReader;

    invoke-direct {v0, v9, v9}, Lcom/alibaba/fastjson2/util/JdbcSupport$DateReader;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0

    .line 185
    :pswitch_5
    check-cast v0, Ljava/lang/Class;

    new-instance v1, Lcom/alibaba/fastjson2/reader/s0;

    invoke-direct {v1}, Lcom/alibaba/fastjson2/reader/s0;-><init>()V

    invoke-static {v0, v6, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;->of(Ljava/lang/Class;Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;

    move-result-object v0

    return-object v0

    .line 186
    :pswitch_6
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    const-wide/16 v3, 0x0

    invoke-static {v0, v1, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 187
    :goto_d
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;

    return-object v0

    .line 188
    :goto_e
    invoke-static {v0, v9, v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 189
    :goto_f
    invoke-static {v0, v9, v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 190
    :goto_10
    invoke-static {v0, v9, v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 191
    :goto_11
    invoke-static {v0, v9, v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 192
    :goto_12
    invoke-static {v0, v9, v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 193
    :goto_13
    invoke-static {v0, v9, v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 194
    :goto_14
    :try_start_1
    move-object v7, v0

    check-cast v7, Ljava/lang/Class;

    move-object/from16 v24, v6

    .line 195
    new-instance v6, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;

    const-class v8, Ljava/lang/String;

    const-class v9, Ljava/lang/String;

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Class;

    aput-object v24, v0, v20

    .line 196
    invoke-virtual {v7, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v16}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;JLjava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/Function;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v6

    :catch_0
    move-exception v0

    .line 197
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 198
    :goto_15
    check-cast v0, Ljava/lang/Class;

    const/4 v9, 0x0

    invoke-static {v0, v10, v9, v14}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->typedMap(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 199
    :goto_16
    check-cast v0, Ljava/lang/Class;

    invoke-static {v0, v8, v9, v14}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->typedMap(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 200
    :goto_17
    check-cast v0, Ljava/lang/Class;

    invoke-static {v0, v13, v9, v14}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->typedMap(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 201
    :goto_18
    check-cast v0, Ljava/lang/Class;

    const-wide/16 v1, 0x0

    invoke-static {v9, v0, v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 202
    :goto_19
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDouble;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplDouble;

    return-object v0

    .line 203
    :goto_1a
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFloat;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplFloat;

    return-object v0

    .line 204
    :goto_1b
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt64;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt64;

    return-object v0

    .line 205
    :goto_1c
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInteger;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInteger;

    return-object v0

    .line 206
    :goto_1d
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplShort;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplShort;

    return-object v0

    .line 207
    :goto_1e
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplByte;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplByte;

    return-object v0

    .line 208
    :goto_1f
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplBoolean;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplBoolean;

    return-object v0

    .line 209
    :goto_20
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharacter;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharacter;

    return-object v0

    .line 210
    :goto_21
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplString;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplString;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x541731ee -> :sswitch_7
        -0x2aec35fd -> :sswitch_6
        0x40d5de3a -> :sswitch_5
        0x40dd4159 -> :sswitch_4
        0x4aad720a -> :sswitch_3
        0x5bc5408c -> :sswitch_2
        0x5e7d83d0 -> :sswitch_1
        0x6d0b6e25 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private getPreviousObjectReader(ZLjava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 11
    return-object p1

    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    check-cast p1, Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 20
    return-object p1
.end method

.method public static synthetic h(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/reflect/Method;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    const v2, 0x4295151f

    .line 12
    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    const-string v1, "parameterNames"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    const/4 v0, 0x0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 28
    .line 29
    check-cast p0, [Ljava/lang/String;

    .line 30
    array-length p2, p0

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->createParameterNames:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic i(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/reflect/Method;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    const v2, 0x4295151f

    .line 12
    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    const-string v1, "parameterNames"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    const/4 v0, 0x0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 28
    .line 29
    check-cast p0, [Ljava/lang/String;

    .line 30
    array-length p2, p0

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->createParameterNames:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic j(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/ZoneId;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/alibaba/fastjson2/time/ZoneId;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/ZoneId;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    const-string v0, "null"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const-string v0, ""

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    check-cast p0, Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method

.method public static synthetic l(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    return-object p0
.end method

.method public static synthetic m(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getCreator(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    .line 4
    return-void
.end method

.method public static match(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/ClassLoader;)Z
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-ne v0, p2, :cond_0

    .line 14
    return v1

    .line 15
    .line 16
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 22
    .line 23
    .line 24
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-static {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->match(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/ClassLoader;)Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    return v1

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 36
    move-result-object p0

    .line 37
    move v0, v2

    .line 38
    :goto_0
    array-length v3, p0

    .line 39
    .line 40
    if-ge v0, v3, :cond_3

    .line 41
    .line 42
    aget-object v3, p0, v0

    .line 43
    .line 44
    .line 45
    invoke-static {v3, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->match(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/ClassLoader;)Z

    .line 46
    move-result v3

    .line 47
    .line 48
    if-eqz v3, :cond_2

    .line 49
    return v1

    .line 50
    .line 51
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_3
    instance-of p0, p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;

    .line 55
    .line 56
    if-eqz p0, :cond_6

    .line 57
    .line 58
    check-cast p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;

    .line 59
    .line 60
    iget-object p0, p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->valueClass:Ljava/lang/Class;

    .line 61
    .line 62
    if-eqz p0, :cond_4

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 66
    move-result-object p0

    .line 67
    .line 68
    if-ne p0, p2, :cond_4

    .line 69
    return v1

    .line 70
    .line 71
    :cond_4
    iget-object p0, p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;->keyType:Ljava/lang/reflect/Type;

    .line 72
    .line 73
    .line 74
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 75
    move-result-object p0

    .line 76
    .line 77
    if-eqz p0, :cond_5

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 81
    move-result-object p0

    .line 82
    .line 83
    if-ne p0, p2, :cond_5

    .line 84
    return v1

    .line 85
    :cond_5
    return v2

    .line 86
    .line 87
    :cond_6
    instance-of p0, p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    .line 88
    .line 89
    if-eqz p0, :cond_8

    .line 90
    .line 91
    check-cast p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    .line 92
    .line 93
    iget-object p0, p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemClass:Ljava/lang/Class;

    .line 94
    .line 95
    if-eqz p0, :cond_7

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 99
    move-result-object p0

    .line 100
    .line 101
    if-ne p0, p2, :cond_7

    .line 102
    return v1

    .line 103
    :cond_7
    return v2

    .line 104
    .line 105
    :cond_8
    instance-of p0, p1, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;

    .line 106
    .line 107
    if-eqz p0, :cond_b

    .line 108
    .line 109
    check-cast p1, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;

    .line 110
    .line 111
    iget-object p0, p1, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 112
    array-length p1, p0

    .line 113
    move v0, v2

    .line 114
    .line 115
    :goto_1
    if-ge v0, p1, :cond_b

    .line 116
    .line 117
    aget-object v3, p0, v0

    .line 118
    .line 119
    iget-object v4, v3, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    .line 120
    .line 121
    if-eqz v4, :cond_9

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 125
    move-result-object v4

    .line 126
    .line 127
    if-ne v4, p2, :cond_9

    .line 128
    return v1

    .line 129
    .line 130
    :cond_9
    iget-object v3, v3, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    .line 131
    .line 132
    instance-of v4, v3, Ljava/lang/reflect/ParameterizedType;

    .line 133
    .line 134
    if-eqz v4, :cond_a

    .line 135
    const/4 v4, 0x0

    .line 136
    .line 137
    .line 138
    invoke-static {v3, v4, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->match(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/ClassLoader;)Z

    .line 139
    move-result v3

    .line 140
    .line 141
    if-eqz v3, :cond_a

    .line 142
    return v1

    .line 143
    .line 144
    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 145
    goto :goto_1

    .line 146
    :cond_b
    return v2
.end method

.method public static synthetic n(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    const v2, 0x7b4778ef

    .line 12
    const/4 v3, 0x0

    .line 13
    .line 14
    if-eq v1, v2, :cond_1

    .line 15
    .line 16
    .line 17
    const p2, 0x7cbf22f8

    .line 18
    .line 19
    if-eq v1, p2, :cond_0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    const-string p2, "withPrefix"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result p2

    .line 27
    .line 28
    if-eqz p2, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 33
    .line 34
    check-cast p0, Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 38
    move-result p2

    .line 39
    .line 40
    if-nez p2, :cond_2

    .line 41
    .line 42
    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->builderWithPrefix:Ljava/lang/String;

    .line 43
    return-void

    .line 44
    .line 45
    :cond_1
    const-string v1, "buildMethod"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v0

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-result-object p0

    .line 56
    .line 57
    check-cast p0, Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    invoke-static {p2, p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->buildMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 61
    move-result-object p0

    .line 62
    .line 63
    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->buildMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic o(JLjava/util/concurrent/atomic/AtomicReference;Ljava/lang/reflect/Field;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64LCase(Ljava/lang/String;)J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    cmp-long p0, p0, v0

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 16
    :cond_0
    return-void
.end method

.method public static synthetic p(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/reflect/Method;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    const-string p2, "typeName"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result p2

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    check-cast p0, Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 23
    move-result p2

    .line 24
    .line 25
    if-nez p2, :cond_0

    .line 26
    .line 27
    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :catchall_0
    :cond_0
    return-void
.end method

.method private processAnnotation(Lcom/alibaba/fastjson2/codec/FieldInfo;[Ljava/lang/annotation/Annotation;)V
    .locals 5

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    :goto_0
    if-ge v1, v0, :cond_2

    .line 5
    .line 6
    aget-object v2, p2, v1

    .line 7
    .line 8
    .line 9
    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 10
    move-result-object v3

    .line 11
    .line 12
    const-class v4, Lcom/alibaba/fastjson2/annotation/JSONField;

    .line 13
    .line 14
    .line 15
    invoke-static {v2, v4}, Lcom/alibaba/fastjson2/util/BeanUtils;->findAnnotation(Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 16
    move-result-object v4

    .line 17
    .line 18
    check-cast v4, Lcom/alibaba/fastjson2/annotation/JSONField;

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Lcom/alibaba/fastjson2/annotation/JSONField;)V

    .line 24
    .line 25
    if-ne v4, v2, :cond_0

    .line 26
    goto :goto_1

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    const-string v4, "com.alibaba.fastjson.annotation.JSONField"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v3

    .line 37
    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, p1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->processJSONField1x(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/annotation/Annotation;)V

    .line 42
    .line 43
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    return-void
.end method

.method private processJSONField1x(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/annotation/Annotation;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/alibaba/fastjson2/reader/k0;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, p2, p1}, Lcom/alibaba/fastjson2/reader/k0;-><init>(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/FieldInfo;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->annotationMethods(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V

    .line 13
    return-void
.end method

.method private processSeeAlsoAnnotation(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/codec/BeanInfo;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    if-eq v0, p2, :cond_0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->mixIn:Z

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->processSeeAlsoAnnotation(Lcom/alibaba/fastjson2/codec/BeanInfo;[Ljava/lang/annotation/Annotation;)V

    .line 4
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->processSeeAlsoAnnotation(Lcom/alibaba/fastjson2/codec/BeanInfo;[Ljava/lang/annotation/Annotation;)V

    return-void
.end method

.method private processSeeAlsoAnnotation(Lcom/alibaba/fastjson2/codec/BeanInfo;[Ljava/lang/annotation/Annotation;)V
    .locals 5

    .line 5
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 6
    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    .line 7
    new-instance v4, Lcom/alibaba/fastjson2/reader/l0;

    invoke-direct {v4, v2, p1}, Lcom/alibaba/fastjson2/reader/l0;-><init>(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;)V

    invoke-static {v3, v4}, Lcom/alibaba/fastjson2/util/BeanUtils;->annotationMethods(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic q(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic r(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;Ljava/lang/reflect/Constructor;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getCreator(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;Ljava/lang/reflect/Constructor;)V

    .line 4
    return-void
.end method

.method public static registerTypeConvert(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/function/Function;",
            ">;>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/function/Function;",
            ")",
            "Lcom/alibaba/fastjson2/function/Function;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Ljava/util/Map;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 21
    move-object v0, p0

    .line 22
    .line 23
    check-cast v0, Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 28
    .line 29
    check-cast p0, Lcom/alibaba/fastjson2/function/Function;

    .line 30
    return-object p0
.end method

.method public static synthetic s(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    return-object v0
.end method

.method public static synthetic t(JLjava/util/concurrent/atomic/AtomicReference;Ljava/lang/reflect/Method;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->setterName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64LCase(Ljava/lang/String;)J

    .line 18
    move-result-wide v0

    .line 19
    .line 20
    cmp-long p0, p0, v0

    .line 21
    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 26
    :cond_0
    return-void
.end method

.method public static typedMap(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 10

    .line 1
    .line 2
    const-class v0, Ljava/lang/String;

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    if-ne p2, v0, :cond_1

    .line 7
    .line 8
    :cond_0
    if-ne p3, v0, :cond_1

    .line 9
    .line 10
    new-instance p2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapString;

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    .line 15
    invoke-direct {p2, p0, p1, v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapString;-><init>(Ljava/lang/Class;Ljava/lang/Class;J)V

    .line 16
    return-object p2

    .line 17
    .line 18
    :cond_1
    new-instance v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;

    .line 19
    .line 20
    const-wide/16 v7, 0x0

    .line 21
    const/4 v9, 0x0

    .line 22
    move-object v3, p0

    .line 23
    move-object v4, p1

    .line 24
    move-object v5, p2

    .line 25
    move-object v6, p3

    .line 26
    .line 27
    .line 28
    invoke-direct/range {v2 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;JLcom/alibaba/fastjson2/function/Function;)V

    .line 29
    return-object v2
.end method

.method public static synthetic u(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 2

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    .line 8
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 9
    .line 10
    const-string v1, "create address error"

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    throw v0
.end method


# virtual methods
.method public addAutoTypeAccept(Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->acceptHashCodes:[J

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    .line 18
    move-result p1

    .line 19
    .line 20
    if-gez p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->acceptHashCodes:[J

    .line 23
    array-length v2, p1

    .line 24
    .line 25
    add-int/lit8 v3, v2, 0x1

    .line 26
    .line 27
    new-array v3, v3, [J

    .line 28
    .line 29
    aput-wide v0, v3, v2

    .line 30
    array-length v0, p1

    .line 31
    const/4 v1, 0x0

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    .line 36
    .line 37
    invoke-static {v3}, Ljava/util/Arrays;->sort([J)V

    .line 38
    .line 39
    iput-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->acceptHashCodes:[J

    .line 40
    :cond_0
    return-void
.end method

.method public final afterAutoType(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->autoTypeHandler:Lcom/alibaba/fastjson2/function/Consumer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson2/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 8
    .line 9
    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->autoTypeList:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$LRUAutoTypeCache;

    .line 10
    monitor-enter p2

    .line 11
    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->autoTypeList:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$LRUAutoTypeCache;

    .line 13
    .line 14
    new-instance v1, Ljava/util/Date;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    monitor-exit p2

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p1
.end method

.method public checkAutoType(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;J)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v2, p2

    .line 7
    .line 8
    move-wide/from16 v3, p3

    .line 9
    const/4 v5, 0x0

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 15
    move-result v6

    .line 16
    .line 17
    if-eqz v6, :cond_1

    .line 18
    .line 19
    :cond_0
    move-object/from16 v18, v5

    .line 20
    .line 21
    goto/16 :goto_9

    .line 22
    .line 23
    :cond_1
    iget-object v6, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->autoTypeBeforeHandler:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    .line 24
    .line 25
    if-eqz v6, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-interface {v6, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    .line 29
    move-result-object v6

    .line 30
    .line 31
    if-eqz v6, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->afterAutoType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 35
    return-object v6

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 39
    move-result v6

    .line 40
    .line 41
    const/16 v7, 0xc0

    .line 42
    .line 43
    const-string v8, "autoType is not support. "

    .line 44
    .line 45
    if-ge v6, v7, :cond_1c

    .line 46
    const/4 v7, 0x0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 50
    move-result v9

    .line 51
    .line 52
    const/16 v10, 0x5b

    .line 53
    const/4 v11, 0x1

    .line 54
    .line 55
    if-ne v9, v10, :cond_3

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 59
    move-result-object v9

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v9, v5, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    .line 63
    .line 64
    :cond_3
    if-eqz v2, :cond_4

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 68
    move-result-object v9

    .line 69
    .line 70
    .line 71
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result v9

    .line 73
    .line 74
    if-eqz v9, :cond_4

    .line 75
    .line 76
    .line 77
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->afterAutoType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 78
    return-object v2

    .line 79
    .line 80
    :cond_4
    sget-object v9, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 81
    .line 82
    iget-wide v9, v9, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 83
    and-long/2addr v9, v3

    .line 84
    .line 85
    const-wide/16 v12, 0x0

    .line 86
    .line 87
    cmp-long v9, v9, v12

    .line 88
    .line 89
    if-eqz v9, :cond_5

    .line 90
    goto :goto_0

    .line 91
    :cond_5
    move v11, v7

    .line 92
    .line 93
    :goto_0
    const/16 v14, 0x2e

    .line 94
    .line 95
    const/16 v15, 0x24

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    const-wide v16, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 101
    .line 102
    move-object/from16 v18, v5

    .line 103
    .line 104
    const-string v5, " -> "

    .line 105
    .line 106
    const-string v7, "type not match. "

    .line 107
    .line 108
    if-eqz v11, :cond_d

    .line 109
    .line 110
    move-wide/from16 v21, v16

    .line 111
    const/4 v9, 0x0

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    const-wide v19, 0x100000001b3L

    .line 117
    .line 118
    :goto_1
    if-ge v9, v6, :cond_c

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 122
    move-result v10

    .line 123
    .line 124
    if-ne v10, v15, :cond_6

    .line 125
    move v10, v14

    .line 126
    .line 127
    :cond_6
    move-wide/from16 v23, v12

    .line 128
    int-to-long v12, v10

    .line 129
    .line 130
    xor-long v12, v21, v12

    .line 131
    .line 132
    mul-long v12, v12, v19

    .line 133
    .line 134
    iget-object v10, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->acceptHashCodes:[J

    .line 135
    .line 136
    .line 137
    invoke-static {v10, v12, v13}, Ljava/util/Arrays;->binarySearch([JJ)I

    .line 138
    move-result v10

    .line 139
    .line 140
    if-ltz v10, :cond_9

    .line 141
    .line 142
    .line 143
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 144
    move-result-object v10

    .line 145
    .line 146
    if-eqz v10, :cond_9

    .line 147
    .line 148
    if-eqz v2, :cond_8

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 152
    move-result v3

    .line 153
    .line 154
    if-eqz v3, :cond_7

    .line 155
    goto :goto_2

    .line 156
    .line 157
    :cond_7
    new-instance v3, Lcom/alibaba/fastjson2/JSONException;

    .line 158
    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 175
    move-result-object v1

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object v1

    .line 183
    .line 184
    .line 185
    invoke-direct {v3, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 186
    throw v3

    .line 187
    .line 188
    .line 189
    :cond_8
    :goto_2
    invoke-virtual {v0, v1, v10}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->afterAutoType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 190
    return-object v10

    .line 191
    .line 192
    :cond_9
    iget-object v10, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->denyHashCodes:[J

    .line 193
    .line 194
    .line 195
    invoke-static {v10, v12, v13}, Ljava/util/Arrays;->binarySearch([JJ)I

    .line 196
    move-result v10

    .line 197
    .line 198
    if-ltz v10, :cond_b

    .line 199
    .line 200
    .line 201
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getMapping(Ljava/lang/String;)Ljava/lang/Class;

    .line 202
    move-result-object v10

    .line 203
    .line 204
    if-eqz v10, :cond_a

    .line 205
    goto :goto_3

    .line 206
    .line 207
    :cond_a
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    .line 208
    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    move-result-object v1

    .line 223
    .line 224
    .line 225
    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 226
    throw v2

    .line 227
    .line 228
    :cond_b
    :goto_3
    add-int/lit8 v9, v9, 0x1

    .line 229
    .line 230
    move-wide/from16 v21, v12

    .line 231
    .line 232
    move-wide/from16 v12, v23

    .line 233
    goto :goto_1

    .line 234
    .line 235
    :cond_c
    :goto_4
    move-wide/from16 v23, v12

    .line 236
    goto :goto_5

    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    :cond_d
    const-wide v19, 0x100000001b3L

    .line 242
    goto :goto_4

    .line 243
    .line 244
    :goto_5
    if-nez v11, :cond_13

    .line 245
    const/4 v9, 0x0

    .line 246
    .line 247
    :goto_6
    if-ge v9, v6, :cond_13

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 251
    move-result v10

    .line 252
    .line 253
    if-ne v10, v15, :cond_e

    .line 254
    move v10, v14

    .line 255
    :cond_e
    int-to-long v12, v10

    .line 256
    .line 257
    xor-long v12, v16, v12

    .line 258
    .line 259
    mul-long v12, v12, v19

    .line 260
    .line 261
    iget-object v10, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->denyHashCodes:[J

    .line 262
    .line 263
    .line 264
    invoke-static {v10, v12, v13}, Ljava/util/Arrays;->binarySearch([JJ)I

    .line 265
    move-result v10

    .line 266
    .line 267
    if-gez v10, :cond_12

    .line 268
    .line 269
    iget-object v10, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->acceptHashCodes:[J

    .line 270
    .line 271
    .line 272
    invoke-static {v10, v12, v13}, Ljava/util/Arrays;->binarySearch([JJ)I

    .line 273
    move-result v10

    .line 274
    .line 275
    if-ltz v10, :cond_11

    .line 276
    .line 277
    .line 278
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 279
    move-result-object v3

    .line 280
    .line 281
    if-eqz v3, :cond_10

    .line 282
    .line 283
    if-eqz v2, :cond_10

    .line 284
    .line 285
    .line 286
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 287
    move-result v4

    .line 288
    .line 289
    if-eqz v4, :cond_f

    .line 290
    goto :goto_7

    .line 291
    .line 292
    :cond_f
    new-instance v3, Lcom/alibaba/fastjson2/JSONException;

    .line 293
    .line 294
    new-instance v4, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 310
    move-result-object v1

    .line 311
    .line 312
    .line 313
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    move-result-object v1

    .line 318
    .line 319
    .line 320
    invoke-direct {v3, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 321
    throw v3

    .line 322
    .line 323
    .line 324
    :cond_10
    :goto_7
    invoke-virtual {v0, v1, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->afterAutoType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 325
    return-object v3

    .line 326
    .line 327
    :cond_11
    add-int/lit8 v9, v9, 0x1

    .line 328
    .line 329
    move-wide/from16 v16, v12

    .line 330
    goto :goto_6

    .line 331
    .line 332
    :cond_12
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    .line 333
    .line 334
    new-instance v3, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    move-result-object v1

    .line 348
    .line 349
    .line 350
    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 351
    throw v2

    .line 352
    .line 353
    :cond_13
    if-nez v11, :cond_14

    .line 354
    return-object v18

    .line 355
    .line 356
    .line 357
    :cond_14
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getMapping(Ljava/lang/String;)Ljava/lang/Class;

    .line 358
    move-result-object v6

    .line 359
    .line 360
    if-eqz v6, :cond_17

    .line 361
    .line 362
    if-eqz v2, :cond_16

    .line 363
    .line 364
    const-class v3, Ljava/lang/Object;

    .line 365
    .line 366
    if-eq v2, v3, :cond_16

    .line 367
    .line 368
    const-class v3, Ljava/util/HashMap;

    .line 369
    .line 370
    if-eq v6, v3, :cond_16

    .line 371
    .line 372
    .line 373
    invoke-virtual {v2, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 374
    move-result v3

    .line 375
    .line 376
    if-eqz v3, :cond_15

    .line 377
    goto :goto_8

    .line 378
    .line 379
    :cond_15
    new-instance v3, Lcom/alibaba/fastjson2/JSONException;

    .line 380
    .line 381
    new-instance v4, Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 397
    move-result-object v1

    .line 398
    .line 399
    .line 400
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 404
    move-result-object v1

    .line 405
    .line 406
    .line 407
    invoke-direct {v3, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 408
    throw v3

    .line 409
    .line 410
    .line 411
    :cond_16
    :goto_8
    invoke-virtual {v0, v1, v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->afterAutoType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 412
    return-object v6

    .line 413
    .line 414
    .line 415
    :cond_17
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 416
    move-result-object v6

    .line 417
    .line 418
    if-eqz v6, :cond_1b

    .line 419
    .line 420
    const-class v9, Ljava/lang/ClassLoader;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v9, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 424
    move-result v9

    .line 425
    .line 426
    if-nez v9, :cond_1a

    .line 427
    .line 428
    const-class v9, Ljavax/sql/DataSource;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v9, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 432
    move-result v9

    .line 433
    .line 434
    if-nez v9, :cond_1a

    .line 435
    .line 436
    const-class v9, Ljavax/sql/RowSet;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v9, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 440
    move-result v9

    .line 441
    .line 442
    if-nez v9, :cond_1a

    .line 443
    .line 444
    if-eqz v2, :cond_1b

    .line 445
    .line 446
    .line 447
    invoke-virtual {v2, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 448
    move-result v8

    .line 449
    .line 450
    if-eqz v8, :cond_18

    .line 451
    .line 452
    .line 453
    invoke-virtual {v0, v1, v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->afterAutoType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 454
    return-object v6

    .line 455
    .line 456
    :cond_18
    sget-object v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreAutoTypeNotMatch:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 457
    .line 458
    iget-wide v8, v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 459
    and-long/2addr v3, v8

    .line 460
    .line 461
    cmp-long v3, v3, v23

    .line 462
    .line 463
    if-eqz v3, :cond_19

    .line 464
    return-object v2

    .line 465
    .line 466
    :cond_19
    new-instance v3, Lcom/alibaba/fastjson2/JSONException;

    .line 467
    .line 468
    new-instance v4, Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 484
    move-result-object v1

    .line 485
    .line 486
    .line 487
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    move-result-object v1

    .line 492
    .line 493
    .line 494
    invoke-direct {v3, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 495
    throw v3

    .line 496
    .line 497
    :cond_1a
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    .line 498
    .line 499
    new-instance v3, Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 512
    move-result-object v1

    .line 513
    .line 514
    .line 515
    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 516
    throw v2

    .line 517
    .line 518
    .line 519
    :cond_1b
    invoke-virtual {v0, v1, v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->afterAutoType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 520
    return-object v6

    .line 521
    .line 522
    :cond_1c
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    .line 523
    .line 524
    new-instance v3, Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 537
    move-result-object v1

    .line 538
    .line 539
    .line 540
    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 541
    throw v2

    .line 542
    :goto_9
    return-object v18
.end method

.method public cleanup(Ljava/lang/Class;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->cleanupCache(Ljava/lang/Class;)V

    return-void
.end method

.method public cleanup(Ljava/lang/ClassLoader;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Type;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/reader/ObjectReader;

    invoke-static {v2, v1, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->match(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/ClassLoader;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Type;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/reader/ObjectReader;

    invoke-static {v2, v1, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->match(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/ClassLoader;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 17
    :cond_5
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->cleanupCache(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public cleanupMixIn()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 16
    return-void
.end method

.method public createFieldReader(Ljava/lang/Class;Ljava/lang/String;J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 7

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 3
    .line 4
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 5
    and-long/2addr p3, v0

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    cmp-long p3, p3, v0

    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    .line 14
    .line 15
    .line 16
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p3

    .line 18
    .line 19
    check-cast p3, Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 23
    .line 24
    .line 25
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object p3

    .line 27
    .line 28
    check-cast p3, Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 29
    .line 30
    :goto_0
    if-eqz p3, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-interface {p3, p2}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getFieldReader(Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    .line 37
    :cond_1
    new-instance p3, Ljava/util/concurrent/atomic/AtomicReference;

    .line 38
    .line 39
    .line 40
    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64LCase(Ljava/lang/String;)J

    .line 44
    move-result-wide v0

    .line 45
    .line 46
    new-instance p4, Lcom/alibaba/fastjson2/reader/m0;

    .line 47
    .line 48
    .line 49
    invoke-direct {p4, v0, v1, p3}, Lcom/alibaba/fastjson2/reader/m0;-><init>(JLjava/util/concurrent/atomic/AtomicReference;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1, p4}, Lcom/alibaba/fastjson2/util/BeanUtils;->fields(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 56
    move-result-object p3

    .line 57
    .line 58
    check-cast p3, Ljava/lang/reflect/Field;

    .line 59
    const/4 p4, 0x0

    .line 60
    .line 61
    if-eqz p3, :cond_2

    .line 62
    .line 63
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->creator:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2, p4, v0, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 71
    move-result-object p1

    .line 72
    return-object p1

    .line 73
    .line 74
    :cond_2
    new-instance p3, Ljava/util/concurrent/atomic/AtomicReference;

    .line 75
    .line 76
    .line 77
    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 78
    .line 79
    new-instance v2, Lcom/alibaba/fastjson2/reader/n0;

    .line 80
    .line 81
    .line 82
    invoke-direct {v2, v0, v1, p3}, Lcom/alibaba/fastjson2/reader/n0;-><init>(JLjava/util/concurrent/atomic/AtomicReference;)V

    .line 83
    .line 84
    .line 85
    invoke-static {p1, v2}, Lcom/alibaba/fastjson2/util/BeanUtils;->setters(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 89
    move-result-object p3

    .line 90
    move-object v6, p3

    .line 91
    .line 92
    check-cast v6, Ljava/lang/reflect/Method;

    .line 93
    .line 94
    if-eqz v6, :cond_3

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 98
    move-result-object p3

    .line 99
    const/4 p4, 0x0

    .line 100
    .line 101
    aget-object v4, p3, p4

    .line 102
    .line 103
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->creator:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    .line 104
    const/4 v3, 0x0

    .line 105
    move-object v5, v4

    .line 106
    move-object v1, p1

    .line 107
    move-object v2, p2

    .line 108
    .line 109
    .line 110
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createFieldReaderMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 111
    move-result-object p1

    .line 112
    return-object p1

    .line 113
    :cond_3
    return-object p4
.end method

.method public getAutoTypeBeforeHandler()Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->autoTypeBeforeHandler:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    .line 3
    return-object v0
.end method

.method public getAutoTypeHandler()Lcom/alibaba/fastjson2/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alibaba/fastjson2/function/Consumer<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->autoTypeHandler:Lcom/alibaba/fastjson2/function/Consumer;

    .line 3
    return-object v0
.end method

.method public getAutoTypeList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->autoTypeList:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$LRUAutoTypeCache;

    .line 3
    return-object v0
.end method

.method public getBeanInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/codec/BeanInfo;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Class;

    .line 9
    .line 10
    const-class v1, Lcom/alibaba/fastjson2/annotation/JSONType;

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    if-eq v0, p2, :cond_2

    .line 17
    .line 18
    iput-boolean v3, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->mixIn:Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 22
    move-result-object v4

    .line 23
    array-length v5, v4

    .line 24
    move v6, v2

    .line 25
    .line 26
    :goto_0
    if-ge v6, v5, :cond_1

    .line 27
    .line 28
    aget-object v7, v4, v6

    .line 29
    .line 30
    .line 31
    invoke-interface {v7}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 32
    move-result-object v8

    .line 33
    .line 34
    if-ne v8, v1, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1, v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getBeanInfo1x(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;)V

    .line 38
    .line 39
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_1
    new-instance v4, Lcom/alibaba/fastjson2/reader/j1;

    .line 43
    .line 44
    .line 45
    invoke-direct {v4, p0, p1, p2}, Lcom/alibaba/fastjson2/reader/j1;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v4}, Lcom/alibaba/fastjson2/util/BeanUtils;->staticMethod(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V

    .line 49
    .line 50
    new-instance v4, Lcom/alibaba/fastjson2/reader/k1;

    .line 51
    .line 52
    .line 53
    invoke-direct {v4, p0, p1, p2}, Lcom/alibaba/fastjson2/reader/k1;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v4}, Lcom/alibaba/fastjson2/util/BeanUtils;->constructor(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 60
    move-result-object v0

    .line 61
    const/4 v4, 0x0

    .line 62
    .line 63
    :goto_1
    if-eqz v0, :cond_7

    .line 64
    .line 65
    const-class v5, Ljava/lang/Object;

    .line 66
    .line 67
    if-eq v0, v5, :cond_7

    .line 68
    .line 69
    const-class v5, Ljava/lang/Enum;

    .line 70
    .line 71
    if-ne v0, v5, :cond_3

    .line 72
    goto :goto_4

    .line 73
    .line 74
    :cond_3
    new-instance v5, Lcom/alibaba/fastjson2/codec/BeanInfo;

    .line 75
    .line 76
    .line 77
    invoke-direct {v5}, Lcom/alibaba/fastjson2/codec/BeanInfo;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v5, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getBeanInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V

    .line 81
    .line 82
    iget-object v5, v5, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlso:[Ljava/lang/Class;

    .line 83
    .line 84
    if-eqz v5, :cond_6

    .line 85
    array-length v6, v5

    .line 86
    move v7, v2

    .line 87
    .line 88
    :goto_2
    if-ge v7, v6, :cond_5

    .line 89
    .line 90
    aget-object v8, v5, v7

    .line 91
    .line 92
    if-ne v8, p2, :cond_4

    .line 93
    goto :goto_3

    .line 94
    .line 95
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 96
    goto :goto_2

    .line 97
    :cond_5
    move-object v4, v0

    .line 98
    .line 99
    .line 100
    :cond_6
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 101
    move-result-object v0

    .line 102
    goto :goto_1

    .line 103
    .line 104
    :cond_7
    :goto_4
    if-eqz v4, :cond_8

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p1, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getBeanInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V

    .line 108
    .line 109
    .line 110
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 111
    move-result-object v0

    .line 112
    array-length v4, v0

    .line 113
    move v5, v2

    .line 114
    .line 115
    :goto_5
    if-ge v5, v4, :cond_a

    .line 116
    .line 117
    aget-object v6, v0, v5

    .line 118
    .line 119
    .line 120
    invoke-interface {v6}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 121
    move-result-object v7

    .line 122
    .line 123
    if-ne v7, v1, :cond_9

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, p1, v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getBeanInfo1x(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;)V

    .line 127
    .line 128
    :cond_9
    add-int/lit8 v5, v5, 0x1

    .line 129
    goto :goto_5

    .line 130
    :cond_a
    array-length v1, v0

    .line 131
    .line 132
    :goto_6
    if-ge v2, v1, :cond_d

    .line 133
    .line 134
    aget-object v4, v0, v2

    .line 135
    .line 136
    .line 137
    invoke-interface {v4}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 138
    move-result-object v5

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 142
    move-result-object v5

    .line 143
    .line 144
    const-string v6, "kotlin.Metadata"

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    move-result v6

    .line 149
    .line 150
    if-nez v6, :cond_c

    .line 151
    .line 152
    const-string v6, "com.alibaba.fastjson.annotation.JSONType"

    .line 153
    .line 154
    .line 155
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    move-result v5

    .line 157
    .line 158
    if-nez v5, :cond_b

    .line 159
    goto :goto_7

    .line 160
    .line 161
    .line 162
    :cond_b
    invoke-virtual {p0, p1, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getBeanInfo1x(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;)V

    .line 163
    goto :goto_7

    .line 164
    .line 165
    :cond_c
    iput-boolean v3, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->kotlin:Z

    .line 166
    .line 167
    :goto_7
    add-int/lit8 v2, v2, 0x1

    .line 168
    goto :goto_6

    .line 169
    .line 170
    :cond_d
    new-instance v0, Lcom/alibaba/fastjson2/reader/l1;

    .line 171
    .line 172
    .line 173
    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/fastjson2/reader/l1;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V

    .line 174
    .line 175
    .line 176
    invoke-static {p2, v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->staticMethod(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V

    .line 177
    .line 178
    new-instance v0, Lcom/alibaba/fastjson2/reader/m1;

    .line 179
    .line 180
    .line 181
    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/fastjson2/reader/m1;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V

    .line 182
    .line 183
    .line 184
    invoke-static {p2, v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->constructor(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V

    .line 185
    .line 186
    iget-object v0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 187
    .line 188
    if-nez v0, :cond_e

    .line 189
    .line 190
    iget-wide v0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->readerFeatures:J

    .line 191
    .line 192
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 193
    .line 194
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 195
    and-long/2addr v0, v2

    .line 196
    .line 197
    const-wide/16 v2, 0x0

    .line 198
    .line 199
    cmp-long v0, v0, v2

    .line 200
    .line 201
    if-nez v0, :cond_e

    .line 202
    .line 203
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->kotlin:Z

    .line 204
    .line 205
    if-eqz v0, :cond_e

    .line 206
    .line 207
    .line 208
    invoke-static {p2, p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->getKotlinConstructor(Ljava/lang/Class;Lcom/alibaba/fastjson2/codec/BeanInfo;)V

    .line 209
    .line 210
    .line 211
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/BeanUtils;->getKotlinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;

    .line 212
    move-result-object p2

    .line 213
    .line 214
    iput-object p2, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->createParameterNames:[Ljava/lang/String;

    .line 215
    :cond_e
    return-void
.end method

.method public getBeanInfo1x(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/alibaba/fastjson2/reader/e1;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, p0, p2, p1}, Lcom/alibaba/fastjson2/reader/e1;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->annotationMethods(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V

    .line 13
    return-void
.end method

.method public getCreator()Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->creator:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    return-object v0
.end method

.method public getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Constructor;I[[Ljava/lang/annotation/Annotation;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    if-eqz v1, :cond_0

    if-eq v1, p2, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p2

    aget-object p2, p2, p4

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->processAnnotation(Lcom/alibaba/fastjson2/codec/FieldInfo;[Ljava/lang/annotation/Annotation;)V

    :cond_0
    if-nez p5, :cond_1

    .line 5
    invoke-virtual {p3}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p5

    .line 6
    :cond_1
    array-length p2, p5

    invoke-virtual {p3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p3

    array-length p3, p3

    if-ne p2, p3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p4, p4, -0x1

    :goto_1
    if-ltz p4, :cond_3

    .line 7
    array-length p2, p5

    if-ge p4, p2, :cond_3

    .line 8
    aget-object v0, p5, p4

    :cond_3
    if-eqz v0, :cond_4

    .line 9
    array-length p2, v0

    if-lez p2, :cond_4

    .line 10
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->processAnnotation(Lcom/alibaba/fastjson2/codec/FieldInfo;[Ljava/lang/annotation/Annotation;)V

    :cond_4
    return-void
.end method

.method public getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 17
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    if-eq v0, p2, :cond_0

    .line 18
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_0

    .line 19
    invoke-virtual {p0, p1, v0, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 20
    :cond_0
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p2

    .line 21
    array-length p3, p2

    if-lez p3, :cond_1

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->processAnnotation(Lcom/alibaba/fastjson2/codec/FieldInfo;[Ljava/lang/annotation/Annotation;)V

    :cond_1
    return-void
.end method

.method public getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .locals 12

    .line 23
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    .line 24
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 25
    const-class v4, Ljava/lang/Object;

    if-eq v3, v4, :cond_0

    if-eqz v3, :cond_0

    .line 26
    invoke-static {v3, p3}, Lcom/alibaba/fastjson2/util/BeanUtils;->getMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 27
    invoke-virtual {p0, p1, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    .line 28
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v4

    move v5, v2

    .line 29
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_3

    .line 30
    aget-object v6, v4, v5

    .line 31
    const-class v7, Ljava/io/Serializable;

    if-ne v6, v7, :cond_1

    goto :goto_1

    .line 32
    :cond_1
    invoke-static {v6, p3}, Lcom/alibaba/fastjson2/util/BeanUtils;->getMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz v6, :cond_2

    if-eqz v3, :cond_2

    .line 33
    invoke-virtual {p0, p1, v3, v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 34
    :cond_3
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    if-eqz v3, :cond_4

    if-eq v3, p2, :cond_4

    .line 35
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-object v4, v1

    :goto_2
    if-eqz v4, :cond_4

    .line 36
    invoke-virtual {p0, p1, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    .line 37
    :cond_4
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p3

    .line 38
    array-length v3, p3

    move-object v5, v1

    move v4, v2

    :goto_3
    if-ge v4, v3, :cond_7

    aget-object v6, p3, v4

    .line 39
    invoke-interface {v6}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v7

    .line 40
    const-class v8, Lcom/alibaba/fastjson2/annotation/JSONField;

    invoke-static {v6, v8}, Lcom/alibaba/fastjson2/util/BeanUtils;->findAnnotation(Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lcom/alibaba/fastjson2/annotation/JSONField;

    if-eqz v8, :cond_5

    .line 41
    invoke-direct {p0, p1, v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Lcom/alibaba/fastjson2/annotation/JSONField;)V

    .line 42
    invoke-interface {v8}, Lcom/alibaba/fastjson2/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v5

    if-ne v8, v6, :cond_5

    goto :goto_4

    .line 43
    :cond_5
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 44
    const-string v8, "com.alibaba.fastjson.annotation.JSONField"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 45
    invoke-direct {p0, p1, v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->processJSONField1x(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/annotation/Annotation;)V

    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 46
    :cond_7
    const-string p3, "set"

    invoke-virtual {v0, p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 47
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->setterName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :goto_5
    move-object v9, p3

    goto :goto_6

    .line 48
    :cond_8
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->getterName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_5

    .line 49
    :goto_6
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v0, 0x1

    if-le p3, v0, :cond_a

    .line 50
    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 v3, 0x41

    if-lt p3, v3, :cond_a

    const/16 v4, 0x5a

    if-gt p3, v4, :cond_a

    .line 51
    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result p3

    if-lt p3, v3, :cond_a

    if-gt p3, v4, :cond_a

    if-eqz v5, :cond_9

    .line 52
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_a

    .line 53
    :cond_9
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object p3

    .line 54
    aget-char v1, p3, v2

    add-int/lit8 v1, v1, 0x20

    int-to-char v1, v1

    aput-char v1, p3, v2

    .line 55
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([C)V

    .line 56
    aget-char v2, p3, v0

    add-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    aput-char v2, p3, v0

    .line 57
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([C)V

    move-object v11, v0

    move-object v10, v1

    :goto_7
    move-object v8, p0

    move-object v7, p1

    move-object v6, p2

    goto :goto_8

    :cond_a
    move-object v10, v1

    move-object v11, v10

    goto :goto_7

    .line 58
    :goto_8
    invoke-static/range {v6 .. v11}, Lcom/alibaba/fastjson2/util/BeanUtils;->getFieldInfo(Ljava/lang/Class;Lcom/alibaba/fastjson2/codec/FieldInfo;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v10

    move-object v0, v11

    if-eqz v1, :cond_b

    .line 59
    iget-object p1, v7, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;

    if-nez p1, :cond_b

    iget-object p1, v7, Lcom/alibaba/fastjson2/codec/FieldInfo;->alternateNames:[Ljava/lang/String;

    if-nez p1, :cond_b

    .line 60
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, v7, Lcom/alibaba/fastjson2/codec/FieldInfo;->alternateNames:[Ljava/lang/String;

    :cond_b
    return-void
.end method

.method public getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;I)V
    .locals 2

    if-eqz p2, :cond_0

    .line 11
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    if-eq v0, p2, :cond_0

    .line 12
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_0

    .line 13
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p2

    aget-object p2, p2, p4

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->processAnnotation(Lcom/alibaba/fastjson2/codec/FieldInfo;[Ljava/lang/annotation/Annotation;)V

    .line 15
    :cond_0
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p2

    aget-object p2, p2, p4

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->processAnnotation(Lcom/alibaba/fastjson2/codec/FieldInfo;[Ljava/lang/annotation/Annotation;)V

    return-void
.end method

.method public getMixIn(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/lang/Class;

    .line 9
    return-object p1
.end method

.method public getObjectReader(J)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 3

    .line 1
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->readerCache:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$ObjectReaderCachePair;

    if-eqz v0, :cond_1

    .line 2
    iget-wide v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$ObjectReaderCachePair;->hashCode:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 3
    iget-object p1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$ObjectReaderCachePair;->reader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object p1

    .line 4
    :cond_0
    iget v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$ObjectReaderCachePair;->missCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$ObjectReaderCachePair;->missCount:I

    const/16 v0, 0x10

    if-le v1, v0, :cond_1

    const/4 v0, 0x0

    .line 5
    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->readerCache:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$ObjectReaderCachePair;

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    .line 7
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->hashCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-eqz v0, :cond_2

    .line 8
    sget-object v1, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->readerCache:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$ObjectReaderCachePair;

    if-nez v1, :cond_2

    .line 9
    new-instance v1, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$ObjectReaderCachePair;

    invoke-direct {v1, p1, p2, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$ObjectReaderCachePair;-><init>(JLcom/alibaba/fastjson2/reader/ObjectReader;)V

    sput-object v1, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->readerCache:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$ObjectReaderCachePair;

    :cond_2
    return-object v0
.end method

.method public getObjectReader(Ljava/lang/String;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;J)",
            "Lcom/alibaba/fastjson2/reader/ObjectReader;"
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 11
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p3, v1

    const-wide/16 v1, 0x0

    cmp-long p3, p3, v1

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 12
    :goto_0
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p3

    if-eq v0, p2, :cond_2

    .line 13
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerIfAbsent(JLcom/alibaba/fastjson2/reader/ObjectReader;)V

    :cond_2
    return-object p3
.end method

.method public getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 7

    .line 15
    const-class v0, Ljava/lang/Object;

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    if-eqz p2, :cond_1

    .line 16
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/reader/ObjectReader;

    goto :goto_0

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/reader/ObjectReader;

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    .line 18
    instance-of v4, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v4, :cond_3

    .line 19
    move-object v4, p1

    check-cast v4, Ljava/lang/reflect/WildcardType;

    invoke-interface {v4}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 20
    array-length v5, v4

    if-ne v5, v3, :cond_3

    .line 21
    aget-object v1, v4, v2

    if-eqz p2, :cond_2

    .line 22
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    :goto_1
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/reader/ObjectReader;

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    return-object v1

    .line 23
    :cond_4
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReaderModule(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    if-eqz v1, :cond_7

    if-eqz p2, :cond_5

    .line 24
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/reader/ObjectReader;

    goto :goto_3

    .line 25
    :cond_5
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/reader/ObjectReader;

    :goto_3
    if-eqz p1, :cond_6

    return-object p1

    :cond_6
    return-object v1

    .line 26
    :cond_7
    instance-of v1, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_9

    .line 27
    move-object v1, p1

    check-cast v1, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 28
    array-length v4, v1

    if-lez v4, :cond_9

    .line 29
    aget-object v1, v1, v2

    .line 30
    instance-of v4, v1, Ljava/lang/Class;

    if-eqz v4, :cond_9

    .line 31
    invoke-virtual {p0, v1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 32
    invoke-direct {p0, p2, p1, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getPreviousObjectReader(ZLjava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    if-eqz p1, :cond_8

    return-object p1

    :cond_8
    return-object v1

    .line 33
    :cond_9
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_10

    .line 34
    move-object v1, p1

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 35
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 36
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 37
    instance-of v5, v4, Ljava/lang/Class;

    if-eqz v5, :cond_10

    .line 38
    check-cast v4, Ljava/lang/Class;

    move-object v5, v4

    :goto_4
    if-eq v5, v0, :cond_b

    .line 39
    invoke-virtual {v5}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v6

    array-length v6, v6

    if-lez v6, :cond_a

    move v2, v3

    goto :goto_5

    .line 40
    :cond_a
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_4

    .line 41
    :cond_b
    :goto_5
    array-length v0, v1

    if-eqz v0, :cond_c

    if-nez v2, :cond_e

    .line 42
    :cond_c
    invoke-virtual {p0, v4, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 43
    invoke-direct {p0, p2, p1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getPreviousObjectReader(ZLjava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    if-eqz p1, :cond_d

    return-object p1

    :cond_d
    return-object v0

    .line 44
    :cond_e
    array-length v0, v1

    const-wide/16 v5, 0x0

    if-ne v0, v3, :cond_f

    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 45
    invoke-static {p1, v4, v5, v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1

    .line 46
    :cond_f
    array-length v0, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 47
    invoke-static {p1, v4, v5, v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1

    .line 48
    :cond_10
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getCreator()Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    move-result-object v0

    .line 49
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getMapping(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 50
    invoke-virtual {v0, v1, p1, p2, p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createObjectReader(Ljava/lang/Class;Ljava/lang/reflect/Type;ZLcom/alibaba/fastjson2/reader/ObjectReaderProvider;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    .line 51
    invoke-direct {p0, p2, p1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getPreviousObjectReader(ZLjava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    if-eqz p1, :cond_11

    return-object p1

    :cond_11
    return-object v0
.end method

.method public getTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/function/Function;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->typeConverts:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->buildInitTypeConverts()Ljava/util/concurrent/ConcurrentMap;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->typeConverts:Ljava/util/concurrent/ConcurrentMap;

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Ljava/util/Map;

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    const/4 p1, 0x0

    .line 20
    return-object p1

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    check-cast p1, Lcom/alibaba/fastjson2/function/Function;

    .line 27
    return-object p1
.end method

.method public mixIn(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    .line 5
    .line 6
    .line 7
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    :goto_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 16
    .line 17
    .line 18
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    .line 21
    .line 22
    .line 23
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
.end method

.method public register(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 5
    .line 6
    .line 7
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 11
    return-object p1

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    check-cast p1, Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 20
    return-object p1
.end method

.method public registerIfAbsent(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object p1
.end method

.method public registerIfAbsent(JLcom/alibaba/fastjson2/reader/ObjectReader;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->hashCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerSeeAlsoSubType(Ljava/lang/Class;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerSeeAlsoSubType(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public registerSeeAlsoSubType(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    .line 4
    instance-of v2, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;

    if-eqz v2, :cond_1

    .line 5
    check-cast v1, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;

    .line 6
    invoke-virtual {v1, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;->addSubType(Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;

    move-result-object p2

    if-eq p2, v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    .line 10
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "superclass is null"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAutoTypeBeforeHandler(Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->autoTypeBeforeHandler:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    .line 3
    return-void
.end method

.method public setAutoTypeHandler(Lcom/alibaba/fastjson2/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/function/Consumer<",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->autoTypeHandler:Lcom/alibaba/fastjson2/function/Consumer;

    .line 3
    return-void
.end method

.method public unregisterObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object p1
.end method

.method public unregisterObjectReader(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
