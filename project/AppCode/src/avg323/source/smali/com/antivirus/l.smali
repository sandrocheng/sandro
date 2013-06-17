.class public final enum Lcom/antivirus/l;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/antivirus/l;

.field public static final enum b:Lcom/antivirus/l;

.field public static final enum c:Lcom/antivirus/l;

.field private static final synthetic d:[Lcom/antivirus/l;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/antivirus/l;

    const-string v1, "UI"

    invoke-direct {v0, v1, v2}, Lcom/antivirus/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/antivirus/l;->a:Lcom/antivirus/l;

    new-instance v0, Lcom/antivirus/l;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v3}, Lcom/antivirus/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/antivirus/l;->b:Lcom/antivirus/l;

    new-instance v0, Lcom/antivirus/l;

    const-string v1, "REMOTE"

    invoke-direct {v0, v1, v4}, Lcom/antivirus/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/antivirus/l;->c:Lcom/antivirus/l;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/antivirus/l;

    sget-object v1, Lcom/antivirus/l;->a:Lcom/antivirus/l;

    aput-object v1, v0, v2

    sget-object v1, Lcom/antivirus/l;->b:Lcom/antivirus/l;

    aput-object v1, v0, v3

    sget-object v1, Lcom/antivirus/l;->c:Lcom/antivirus/l;

    aput-object v1, v0, v4

    sput-object v0, Lcom/antivirus/l;->d:[Lcom/antivirus/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/antivirus/l;
    .locals 1

    const-class v0, Lcom/antivirus/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/antivirus/l;

    return-object v0
.end method

.method public static values()[Lcom/antivirus/l;
    .locals 1

    sget-object v0, Lcom/antivirus/l;->d:[Lcom/antivirus/l;

    invoke-virtual {v0}, [Lcom/antivirus/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/antivirus/l;

    return-object v0
.end method
