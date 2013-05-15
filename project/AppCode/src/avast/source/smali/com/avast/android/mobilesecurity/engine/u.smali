.class public final enum Lcom/avast/android/mobilesecurity/engine/u;
.super Ljava/lang/Enum;
.source "ScanResultStructure.java"


# static fields
.field public static final enum a:Lcom/avast/android/mobilesecurity/engine/u;

.field public static final enum b:Lcom/avast/android/mobilesecurity/engine/u;

.field public static final enum c:Lcom/avast/android/mobilesecurity/engine/u;

.field public static final enum d:Lcom/avast/android/mobilesecurity/engine/u;

.field private static final e:Ljava/util/Map;

.field private static final synthetic g:[Lcom/avast/android/mobilesecurity/engine/u;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 330
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/u;

    const-string v1, "CATEGORY_UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, Lcom/avast/android/mobilesecurity/engine/u;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/u;->a:Lcom/avast/android/mobilesecurity/engine/u;

    .line 335
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/u;

    const-string v1, "CATEGORY_MALWARE"

    invoke-direct {v0, v1, v3, v3}, Lcom/avast/android/mobilesecurity/engine/u;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/u;->b:Lcom/avast/android/mobilesecurity/engine/u;

    .line 340
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/u;

    const-string v1, "CATEGORY_SUSPICOUS"

    invoke-direct {v0, v1, v4, v4}, Lcom/avast/android/mobilesecurity/engine/u;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/u;->c:Lcom/avast/android/mobilesecurity/engine/u;

    .line 345
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/u;

    const-string v1, "CATEGORY_PUP"

    invoke-direct {v0, v1, v5, v5}, Lcom/avast/android/mobilesecurity/engine/u;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/u;->d:Lcom/avast/android/mobilesecurity/engine/u;

    .line 324
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/engine/u;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/u;->a:Lcom/avast/android/mobilesecurity/engine/u;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/u;->b:Lcom/avast/android/mobilesecurity/engine/u;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/u;->c:Lcom/avast/android/mobilesecurity/engine/u;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/u;->d:Lcom/avast/android/mobilesecurity/engine/u;

    aput-object v1, v0, v5

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/u;->g:[Lcom/avast/android/mobilesecurity/engine/u;

    .line 347
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/u;->e:Ljava/util/Map;

    .line 350
    const-class v0, Lcom/avast/android/mobilesecurity/engine/u;

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

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/u;

    .line 351
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/u;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/u;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 352
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 356
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 357
    iput p3, p0, Lcom/avast/android/mobilesecurity/engine/u;->f:I

    .line 358
    return-void
.end method

.method public static a(I)Lcom/avast/android/mobilesecurity/engine/u;
    .locals 2
    .parameter

    .prologue
    .line 365
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/u;->e:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/u;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/u;
    .locals 1
    .parameter

    .prologue
    .line 324
    const-class v0, Lcom/avast/android/mobilesecurity/engine/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/u;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/mobilesecurity/engine/u;
    .locals 1

    .prologue
    .line 324
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/u;->g:[Lcom/avast/android/mobilesecurity/engine/u;

    invoke-virtual {v0}, [Lcom/avast/android/mobilesecurity/engine/u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/mobilesecurity/engine/u;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/u;->f:I

    return v0
.end method
