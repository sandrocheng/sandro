.class final enum Lcom/antivirus/ui/main/n;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/antivirus/ui/main/n;

.field public static final enum b:Lcom/antivirus/ui/main/n;

.field public static final enum c:Lcom/antivirus/ui/main/n;

.field private static final synthetic d:[Lcom/antivirus/ui/main/n;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/antivirus/ui/main/n;

    const-string v1, "SCAN_NOW"

    invoke-direct {v0, v1, v2}, Lcom/antivirus/ui/main/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/antivirus/ui/main/n;->a:Lcom/antivirus/ui/main/n;

    new-instance v0, Lcom/antivirus/ui/main/n;

    const-string v1, "VIEW_RESULTS"

    invoke-direct {v0, v1, v3}, Lcom/antivirus/ui/main/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/antivirus/ui/main/n;->b:Lcom/antivirus/ui/main/n;

    new-instance v0, Lcom/antivirus/ui/main/n;

    const-string v1, "STOP_SCAN"

    invoke-direct {v0, v1, v4}, Lcom/antivirus/ui/main/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/antivirus/ui/main/n;->c:Lcom/antivirus/ui/main/n;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/antivirus/ui/main/n;

    sget-object v1, Lcom/antivirus/ui/main/n;->a:Lcom/antivirus/ui/main/n;

    aput-object v1, v0, v2

    sget-object v1, Lcom/antivirus/ui/main/n;->b:Lcom/antivirus/ui/main/n;

    aput-object v1, v0, v3

    sget-object v1, Lcom/antivirus/ui/main/n;->c:Lcom/antivirus/ui/main/n;

    aput-object v1, v0, v4

    sput-object v0, Lcom/antivirus/ui/main/n;->d:[Lcom/antivirus/ui/main/n;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/antivirus/ui/main/n;
    .locals 1

    const-class v0, Lcom/antivirus/ui/main/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/main/n;

    return-object v0
.end method

.method public static values()[Lcom/antivirus/ui/main/n;
    .locals 1

    sget-object v0, Lcom/antivirus/ui/main/n;->d:[Lcom/antivirus/ui/main/n;

    invoke-virtual {v0}, [Lcom/antivirus/ui/main/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/antivirus/ui/main/n;

    return-object v0
.end method
