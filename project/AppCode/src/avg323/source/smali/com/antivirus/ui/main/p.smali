.class final enum Lcom/antivirus/ui/main/p;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/antivirus/ui/main/p;

.field public static final enum b:Lcom/antivirus/ui/main/p;

.field public static final enum c:Lcom/antivirus/ui/main/p;

.field private static final synthetic d:[Lcom/antivirus/ui/main/p;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/antivirus/ui/main/p;

    const-string v1, "NON"

    invoke-direct {v0, v1, v2}, Lcom/antivirus/ui/main/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/antivirus/ui/main/p;->a:Lcom/antivirus/ui/main/p;

    new-instance v0, Lcom/antivirus/ui/main/p;

    const-string v1, "CLEAN"

    invoke-direct {v0, v1, v3}, Lcom/antivirus/ui/main/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/antivirus/ui/main/p;->b:Lcom/antivirus/ui/main/p;

    new-instance v0, Lcom/antivirus/ui/main/p;

    const-string v1, "THREAT"

    invoke-direct {v0, v1, v4}, Lcom/antivirus/ui/main/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/antivirus/ui/main/p;->c:Lcom/antivirus/ui/main/p;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/antivirus/ui/main/p;

    sget-object v1, Lcom/antivirus/ui/main/p;->a:Lcom/antivirus/ui/main/p;

    aput-object v1, v0, v2

    sget-object v1, Lcom/antivirus/ui/main/p;->b:Lcom/antivirus/ui/main/p;

    aput-object v1, v0, v3

    sget-object v1, Lcom/antivirus/ui/main/p;->c:Lcom/antivirus/ui/main/p;

    aput-object v1, v0, v4

    sput-object v0, Lcom/antivirus/ui/main/p;->d:[Lcom/antivirus/ui/main/p;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/antivirus/ui/main/p;
    .locals 1

    const-class v0, Lcom/antivirus/ui/main/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/main/p;

    return-object v0
.end method

.method public static values()[Lcom/antivirus/ui/main/p;
    .locals 1

    sget-object v0, Lcom/antivirus/ui/main/p;->d:[Lcom/antivirus/ui/main/p;

    invoke-virtual {v0}, [Lcom/antivirus/ui/main/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/antivirus/ui/main/p;

    return-object v0
.end method
