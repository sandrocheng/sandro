.class public final enum Lcom/antivirus/ui/tablet/e;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/antivirus/ui/tablet/e;

.field public static final enum b:Lcom/antivirus/ui/tablet/e;

.field public static final enum c:Lcom/antivirus/ui/tablet/e;

.field public static final enum d:Lcom/antivirus/ui/tablet/e;

.field private static final synthetic e:[Lcom/antivirus/ui/tablet/e;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/antivirus/ui/tablet/e;

    const-string v1, "NON"

    invoke-direct {v0, v1, v2}, Lcom/antivirus/ui/tablet/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/antivirus/ui/tablet/e;->a:Lcom/antivirus/ui/tablet/e;

    new-instance v0, Lcom/antivirus/ui/tablet/e;

    const-string v1, "CLEAN"

    invoke-direct {v0, v1, v3}, Lcom/antivirus/ui/tablet/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/antivirus/ui/tablet/e;->b:Lcom/antivirus/ui/tablet/e;

    new-instance v0, Lcom/antivirus/ui/tablet/e;

    const-string v1, "THREAT"

    invoke-direct {v0, v1, v4}, Lcom/antivirus/ui/tablet/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/antivirus/ui/tablet/e;->c:Lcom/antivirus/ui/tablet/e;

    new-instance v0, Lcom/antivirus/ui/tablet/e;

    const-string v1, "SCANNING"

    invoke-direct {v0, v1, v5}, Lcom/antivirus/ui/tablet/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/antivirus/ui/tablet/e;->d:Lcom/antivirus/ui/tablet/e;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/antivirus/ui/tablet/e;

    sget-object v1, Lcom/antivirus/ui/tablet/e;->a:Lcom/antivirus/ui/tablet/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/antivirus/ui/tablet/e;->b:Lcom/antivirus/ui/tablet/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/antivirus/ui/tablet/e;->c:Lcom/antivirus/ui/tablet/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/antivirus/ui/tablet/e;->d:Lcom/antivirus/ui/tablet/e;

    aput-object v1, v0, v5

    sput-object v0, Lcom/antivirus/ui/tablet/e;->e:[Lcom/antivirus/ui/tablet/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/antivirus/ui/tablet/e;
    .locals 1

    const-class v0, Lcom/antivirus/ui/tablet/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/tablet/e;

    return-object v0
.end method

.method public static values()[Lcom/antivirus/ui/tablet/e;
    .locals 1

    sget-object v0, Lcom/antivirus/ui/tablet/e;->e:[Lcom/antivirus/ui/tablet/e;

    invoke-virtual {v0}, [Lcom/antivirus/ui/tablet/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/antivirus/ui/tablet/e;

    return-object v0
.end method
