.class public final enum Lcom/antivirus/core/e/d;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/antivirus/core/e/d;

.field public static final enum b:Lcom/antivirus/core/e/d;

.field public static final enum c:Lcom/antivirus/core/e/d;

.field public static final enum d:Lcom/antivirus/core/e/d;

.field public static final enum e:Lcom/antivirus/core/e/d;

.field public static final enum f:Lcom/antivirus/core/e/d;

.field private static final synthetic g:[Lcom/antivirus/core/e/d;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/antivirus/core/e/d;

    const-string v1, "CLASSESDEX"

    invoke-direct {v0, v1, v3}, Lcom/antivirus/core/e/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/antivirus/core/e/d;->a:Lcom/antivirus/core/e/d;

    new-instance v0, Lcom/antivirus/core/e/d;

    const-string v1, "MANIFESTMF"

    invoke-direct {v0, v1, v4}, Lcom/antivirus/core/e/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/antivirus/core/e/d;->b:Lcom/antivirus/core/e/d;

    new-instance v0, Lcom/antivirus/core/e/d;

    const-string v1, "BPACK"

    invoke-direct {v0, v1, v5}, Lcom/antivirus/core/e/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/antivirus/core/e/d;->c:Lcom/antivirus/core/e/d;

    new-instance v0, Lcom/antivirus/core/e/d;

    const-string v1, "SPAM"

    invoke-direct {v0, v1, v6}, Lcom/antivirus/core/e/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/antivirus/core/e/d;->d:Lcom/antivirus/core/e/d;

    new-instance v0, Lcom/antivirus/core/e/d;

    const-string v1, "MEDIA"

    invoke-direct {v0, v1, v7}, Lcom/antivirus/core/e/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/antivirus/core/e/d;->e:Lcom/antivirus/core/e/d;

    new-instance v0, Lcom/antivirus/core/e/d;

    const-string v1, "EMGS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/antivirus/core/e/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/antivirus/core/e/d;->f:Lcom/antivirus/core/e/d;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/antivirus/core/e/d;

    sget-object v1, Lcom/antivirus/core/e/d;->a:Lcom/antivirus/core/e/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/antivirus/core/e/d;->b:Lcom/antivirus/core/e/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/antivirus/core/e/d;->c:Lcom/antivirus/core/e/d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/antivirus/core/e/d;->d:Lcom/antivirus/core/e/d;

    aput-object v1, v0, v6

    sget-object v1, Lcom/antivirus/core/e/d;->e:Lcom/antivirus/core/e/d;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/antivirus/core/e/d;->f:Lcom/antivirus/core/e/d;

    aput-object v2, v0, v1

    sput-object v0, Lcom/antivirus/core/e/d;->g:[Lcom/antivirus/core/e/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/antivirus/core/e/d;
    .locals 1

    const-class v0, Lcom/antivirus/core/e/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/antivirus/core/e/d;

    return-object v0
.end method

.method public static values()[Lcom/antivirus/core/e/d;
    .locals 1

    sget-object v0, Lcom/antivirus/core/e/d;->g:[Lcom/antivirus/core/e/d;

    invoke-virtual {v0}, [Lcom/antivirus/core/e/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/antivirus/core/e/d;

    return-object v0
.end method
