.class public final enum Lcom/avast/android/mobilesecurity/engine/v;
.super Ljava/lang/Enum;
.source "ScanResultStructure.java"


# static fields
.field public static final enum a:Lcom/avast/android/mobilesecurity/engine/v;

.field public static final enum b:Lcom/avast/android/mobilesecurity/engine/v;

.field public static final enum c:Lcom/avast/android/mobilesecurity/engine/v;

.field public static final enum d:Lcom/avast/android/mobilesecurity/engine/v;

.field public static final enum e:Lcom/avast/android/mobilesecurity/engine/v;

.field public static final enum f:Lcom/avast/android/mobilesecurity/engine/v;

.field public static final enum g:Lcom/avast/android/mobilesecurity/engine/v;

.field public static final enum h:Lcom/avast/android/mobilesecurity/engine/v;

.field public static final enum i:Lcom/avast/android/mobilesecurity/engine/v;

.field public static final enum j:Lcom/avast/android/mobilesecurity/engine/v;

.field public static final enum k:Lcom/avast/android/mobilesecurity/engine/v;

.field public static final enum l:Lcom/avast/android/mobilesecurity/engine/v;

.field public static final enum m:Lcom/avast/android/mobilesecurity/engine/v;

.field public static final enum n:Lcom/avast/android/mobilesecurity/engine/v;

.field public static final enum o:Lcom/avast/android/mobilesecurity/engine/v;

.field public static final enum p:Lcom/avast/android/mobilesecurity/engine/v;

.field private static final q:Ljava/util/Map;

.field private static final synthetic s:[Lcom/avast/android/mobilesecurity/engine/v;


# instance fields
.field private final r:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 218
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/v;

    const-string v1, "TYPE_UNKNOWN"

    invoke-direct {v0, v1, v4, v4}, Lcom/avast/android/mobilesecurity/engine/v;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/v;->a:Lcom/avast/android/mobilesecurity/engine/v;

    .line 223
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/v;

    const-string v1, "TYPE_DIALER"

    invoke-direct {v0, v1, v5, v5}, Lcom/avast/android/mobilesecurity/engine/v;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/v;->b:Lcom/avast/android/mobilesecurity/engine/v;

    .line 228
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/v;

    const-string v1, "TYPE_ADWARE"

    invoke-direct {v0, v1, v6, v6}, Lcom/avast/android/mobilesecurity/engine/v;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/v;->c:Lcom/avast/android/mobilesecurity/engine/v;

    .line 233
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/v;

    const-string v1, "TYPE_CRYPTOR"

    invoke-direct {v0, v1, v7, v7}, Lcom/avast/android/mobilesecurity/engine/v;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/v;->d:Lcom/avast/android/mobilesecurity/engine/v;

    .line 238
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/v;

    const-string v1, "TYPE_DROPPER"

    invoke-direct {v0, v1, v8, v8}, Lcom/avast/android/mobilesecurity/engine/v;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/v;->e:Lcom/avast/android/mobilesecurity/engine/v;

    .line 243
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/v;

    const-string v1, "TYPE_EXPLOIT"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/engine/v;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/v;->f:Lcom/avast/android/mobilesecurity/engine/v;

    .line 248
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/v;

    const-string v1, "TYPE_VIRUS_MAKING_KIT"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/engine/v;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/v;->g:Lcom/avast/android/mobilesecurity/engine/v;

    .line 253
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/v;

    const-string v1, "TYPE_ROOTKIT"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/engine/v;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/v;->h:Lcom/avast/android/mobilesecurity/engine/v;

    .line 258
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/v;

    const-string v1, "TYPE_SPYWARE"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/engine/v;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/v;->i:Lcom/avast/android/mobilesecurity/engine/v;

    .line 264
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/v;

    const-string v1, "TYPE_TROJAN"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/engine/v;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/v;->j:Lcom/avast/android/mobilesecurity/engine/v;

    .line 269
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/v;

    const-string v1, "TYPE_WORM"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/engine/v;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/v;->k:Lcom/avast/android/mobilesecurity/engine/v;

    .line 274
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/v;

    const-string v1, "TYPE_PUP"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/engine/v;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/v;->l:Lcom/avast/android/mobilesecurity/engine/v;

    .line 279
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/v;

    const-string v1, "TYPE_JOKE"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/engine/v;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/v;->m:Lcom/avast/android/mobilesecurity/engine/v;

    .line 284
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/v;

    const-string v1, "TYPE_TOOL"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/engine/v;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/v;->n:Lcom/avast/android/mobilesecurity/engine/v;

    .line 289
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/v;

    const-string v1, "TYPE_HEURISTICS"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/engine/v;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/v;->o:Lcom/avast/android/mobilesecurity/engine/v;

    .line 294
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/v;

    const-string v1, "TYPE_SUSPICIOUS"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/engine/v;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/v;->p:Lcom/avast/android/mobilesecurity/engine/v;

    .line 212
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/engine/v;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/v;->a:Lcom/avast/android/mobilesecurity/engine/v;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/v;->b:Lcom/avast/android/mobilesecurity/engine/v;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/v;->c:Lcom/avast/android/mobilesecurity/engine/v;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/v;->d:Lcom/avast/android/mobilesecurity/engine/v;

    aput-object v1, v0, v7

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/v;->e:Lcom/avast/android/mobilesecurity/engine/v;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/v;->f:Lcom/avast/android/mobilesecurity/engine/v;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/v;->g:Lcom/avast/android/mobilesecurity/engine/v;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/v;->h:Lcom/avast/android/mobilesecurity/engine/v;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/v;->i:Lcom/avast/android/mobilesecurity/engine/v;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/v;->j:Lcom/avast/android/mobilesecurity/engine/v;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/v;->k:Lcom/avast/android/mobilesecurity/engine/v;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/v;->l:Lcom/avast/android/mobilesecurity/engine/v;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/v;->m:Lcom/avast/android/mobilesecurity/engine/v;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/v;->n:Lcom/avast/android/mobilesecurity/engine/v;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/v;->o:Lcom/avast/android/mobilesecurity/engine/v;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/v;->p:Lcom/avast/android/mobilesecurity/engine/v;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/v;->s:[Lcom/avast/android/mobilesecurity/engine/v;

    .line 296
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/v;->q:Ljava/util/Map;

    .line 299
    const-class v0, Lcom/avast/android/mobilesecurity/engine/v;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/v;

    .line 300
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/v;->q:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/v;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 301
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 305
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 306
    iput p3, p0, Lcom/avast/android/mobilesecurity/engine/v;->r:I

    .line 307
    return-void
.end method

.method public static a(I)Lcom/avast/android/mobilesecurity/engine/v;
    .locals 2
    .parameter

    .prologue
    .line 314
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/v;->q:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/v;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/v;
    .locals 1
    .parameter

    .prologue
    .line 212
    const-class v0, Lcom/avast/android/mobilesecurity/engine/v;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/v;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/mobilesecurity/engine/v;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/v;->s:[Lcom/avast/android/mobilesecurity/engine/v;

    invoke-virtual {v0}, [Lcom/avast/android/mobilesecurity/engine/v;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/mobilesecurity/engine/v;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/v;->r:I

    return v0
.end method
