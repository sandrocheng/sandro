.class public final enum Lcom/avast/android/mobilesecurity/vps/b/w;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/avast/android/mobilesecurity/vps/b/w;

.field public static final enum b:Lcom/avast/android/mobilesecurity/vps/b/w;

.field public static final enum c:Lcom/avast/android/mobilesecurity/vps/b/w;

.field public static final enum d:Lcom/avast/android/mobilesecurity/vps/b/w;

.field public static final enum e:Lcom/avast/android/mobilesecurity/vps/b/w;

.field public static final enum f:Lcom/avast/android/mobilesecurity/vps/b/w;

.field private static final g:Ljava/util/Map;

.field private static final synthetic i:[Lcom/avast/android/mobilesecurity/vps/b/w;


# instance fields
.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/b/w;

    const-string v1, "RESULT_OK"

    invoke-direct {v0, v1, v4, v4}, Lcom/avast/android/mobilesecurity/vps/b/w;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/w;->a:Lcom/avast/android/mobilesecurity/vps/b/w;

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/b/w;

    const-string v1, "RESULT_MALWARE"

    invoke-direct {v0, v1, v5, v5}, Lcom/avast/android/mobilesecurity/vps/b/w;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/w;->b:Lcom/avast/android/mobilesecurity/vps/b/w;

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/b/w;

    const-string v1, "RESULT_PHISHING"

    invoke-direct {v0, v1, v6, v6}, Lcom/avast/android/mobilesecurity/vps/b/w;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/w;->c:Lcom/avast/android/mobilesecurity/vps/b/w;

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/b/w;

    const-string v1, "RESULT_UNKNOWN_ERROR"

    invoke-direct {v0, v1, v7, v7}, Lcom/avast/android/mobilesecurity/vps/b/w;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/w;->d:Lcom/avast/android/mobilesecurity/vps/b/w;

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/b/w;

    const-string v1, "RESULT_SUSPICIOUS"

    invoke-direct {v0, v1, v8, v8}, Lcom/avast/android/mobilesecurity/vps/b/w;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/w;->e:Lcom/avast/android/mobilesecurity/vps/b/w;

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/b/w;

    const-string v1, "RESULT_TYPO_SQUATTING"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/vps/b/w;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/w;->f:Lcom/avast/android/mobilesecurity/vps/b/w;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/vps/b/w;

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/w;->a:Lcom/avast/android/mobilesecurity/vps/b/w;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/w;->b:Lcom/avast/android/mobilesecurity/vps/b/w;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/w;->c:Lcom/avast/android/mobilesecurity/vps/b/w;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/w;->d:Lcom/avast/android/mobilesecurity/vps/b/w;

    aput-object v1, v0, v7

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/b/w;->e:Lcom/avast/android/mobilesecurity/vps/b/w;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/avast/android/mobilesecurity/vps/b/w;->f:Lcom/avast/android/mobilesecurity/vps/b/w;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/w;->i:[Lcom/avast/android/mobilesecurity/vps/b/w;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/b/w;->g:Ljava/util/Map;

    const-class v0, Lcom/avast/android/mobilesecurity/vps/b/w;

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

    check-cast v0, Lcom/avast/android/mobilesecurity/vps/b/w;

    sget-object v2, Lcom/avast/android/mobilesecurity/vps/b/w;->g:Ljava/util/Map;

    iget v3, v0, Lcom/avast/android/mobilesecurity/vps/b/w;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/avast/android/mobilesecurity/vps/b/w;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/b/w;
    .locals 1

    const-class v0, Lcom/avast/android/mobilesecurity/vps/b/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/vps/b/w;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/mobilesecurity/vps/b/w;
    .locals 1

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/b/w;->i:[Lcom/avast/android/mobilesecurity/vps/b/w;

    invoke-virtual {v0}, [Lcom/avast/android/mobilesecurity/vps/b/w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/mobilesecurity/vps/b/w;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/avast/android/mobilesecurity/vps/b/w;->h:I

    return v0
.end method
