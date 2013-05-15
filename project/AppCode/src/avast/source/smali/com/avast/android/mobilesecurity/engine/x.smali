.class public final enum Lcom/avast/android/mobilesecurity/engine/x;
.super Ljava/lang/Enum;
.source "ScanResultStructure.java"


# static fields
.field public static final enum a:Lcom/avast/android/mobilesecurity/engine/x;

.field public static final enum b:Lcom/avast/android/mobilesecurity/engine/x;

.field public static final enum c:Lcom/avast/android/mobilesecurity/engine/x;

.field public static final enum d:Lcom/avast/android/mobilesecurity/engine/x;

.field public static final enum e:Lcom/avast/android/mobilesecurity/engine/x;

.field public static final enum f:Lcom/avast/android/mobilesecurity/engine/x;

.field public static final enum g:Lcom/avast/android/mobilesecurity/engine/x;

.field public static final enum h:Lcom/avast/android/mobilesecurity/engine/x;

.field public static final enum i:Lcom/avast/android/mobilesecurity/engine/x;

.field public static final enum j:Lcom/avast/android/mobilesecurity/engine/x;

.field public static final enum k:Lcom/avast/android/mobilesecurity/engine/x;

.field public static final enum l:Lcom/avast/android/mobilesecurity/engine/x;

.field private static final m:Ljava/util/Map;

.field private static final synthetic o:[Lcom/avast/android/mobilesecurity/engine/x;


# instance fields
.field private final n:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 38
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/x;

    const-string v1, "RESULT_UNKNOWN_ERROR"

    invoke-direct {v0, v1, v4, v4}, Lcom/avast/android/mobilesecurity/engine/x;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/x;->a:Lcom/avast/android/mobilesecurity/engine/x;

    .line 44
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/x;

    const-string v1, "RESULT_ERROR_INSUFFICIENT_SPACE"

    invoke-direct {v0, v1, v5, v5}, Lcom/avast/android/mobilesecurity/engine/x;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/x;->b:Lcom/avast/android/mobilesecurity/engine/x;

    .line 49
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/x;

    const-string v1, "RESULT_ERROR_PRIVATE_FILE"

    invoke-direct {v0, v1, v6, v6}, Lcom/avast/android/mobilesecurity/engine/x;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/x;->c:Lcom/avast/android/mobilesecurity/engine/x;

    .line 55
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/x;

    const-string v1, "RESULT_ERROR_SKIP"

    invoke-direct {v0, v1, v7, v7}, Lcom/avast/android/mobilesecurity/engine/x;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/x;->d:Lcom/avast/android/mobilesecurity/engine/x;

    .line 60
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/x;

    const-string v1, "RESULT_OUTDATED_APPLICATION"

    invoke-direct {v0, v1, v8, v8}, Lcom/avast/android/mobilesecurity/engine/x;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/x;->e:Lcom/avast/android/mobilesecurity/engine/x;

    .line 65
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/x;

    const-string v1, "RESULT_INCOMPATIBLE_VPS"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/engine/x;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/x;->f:Lcom/avast/android/mobilesecurity/engine/x;

    .line 67
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/x;

    const-string v1, "RESULT_ERROR_SCAN_INVALID_CONTEXT"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/engine/x;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/x;->g:Lcom/avast/android/mobilesecurity/engine/x;

    .line 69
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/x;

    const-string v1, "RESULT_ERROR_UNNAMED_VIRUS"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/engine/x;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/x;->h:Lcom/avast/android/mobilesecurity/engine/x;

    .line 71
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/x;

    const-string v1, "RESULT_ERROR_SCAN_INTERNAL_ERROR"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/engine/x;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/x;->i:Lcom/avast/android/mobilesecurity/engine/x;

    .line 81
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/x;

    const-string v1, "RESULT_OK"

    const/16 v2, 0x9

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/engine/x;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/x;->j:Lcom/avast/android/mobilesecurity/engine/x;

    .line 87
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/x;

    const-string v1, "RESULT_SUSPICIOUS"

    const/16 v2, 0xa

    const/16 v3, 0x96

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/engine/x;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/x;->k:Lcom/avast/android/mobilesecurity/engine/x;

    .line 92
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/x;

    const-string v1, "RESULT_INFECTED"

    const/16 v2, 0xb

    const/16 v3, 0xc8

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/engine/x;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/x;->l:Lcom/avast/android/mobilesecurity/engine/x;

    .line 27
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/engine/x;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/x;->a:Lcom/avast/android/mobilesecurity/engine/x;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/x;->b:Lcom/avast/android/mobilesecurity/engine/x;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/x;->c:Lcom/avast/android/mobilesecurity/engine/x;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/x;->d:Lcom/avast/android/mobilesecurity/engine/x;

    aput-object v1, v0, v7

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/x;->e:Lcom/avast/android/mobilesecurity/engine/x;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/x;->f:Lcom/avast/android/mobilesecurity/engine/x;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/x;->g:Lcom/avast/android/mobilesecurity/engine/x;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/x;->h:Lcom/avast/android/mobilesecurity/engine/x;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/x;->i:Lcom/avast/android/mobilesecurity/engine/x;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/x;->j:Lcom/avast/android/mobilesecurity/engine/x;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/x;->k:Lcom/avast/android/mobilesecurity/engine/x;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/x;->l:Lcom/avast/android/mobilesecurity/engine/x;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/x;->o:[Lcom/avast/android/mobilesecurity/engine/x;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/x;->m:Ljava/util/Map;

    .line 102
    const-class v0, Lcom/avast/android/mobilesecurity/engine/x;

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

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/x;

    .line 103
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/x;->m:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/x;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 104
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 118
    iput p3, p0, Lcom/avast/android/mobilesecurity/engine/x;->n:I

    .line 119
    return-void
.end method

.method public static a(I)Lcom/avast/android/mobilesecurity/engine/x;
    .locals 2
    .parameter

    .prologue
    .line 138
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/x;->m:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/x;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/x;
    .locals 1
    .parameter

    .prologue
    .line 27
    const-class v0, Lcom/avast/android/mobilesecurity/engine/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/x;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/mobilesecurity/engine/x;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/x;->o:[Lcom/avast/android/mobilesecurity/engine/x;

    invoke-virtual {v0}, [Lcom/avast/android/mobilesecurity/engine/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/mobilesecurity/engine/x;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/x;->n:I

    return v0
.end method
