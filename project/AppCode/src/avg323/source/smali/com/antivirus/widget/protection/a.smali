.class public final enum Lcom/antivirus/widget/protection/a;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/avg/widget/model/plugin/a;


# static fields
.field public static final enum a:Lcom/antivirus/widget/protection/a;

.field public static final enum b:Lcom/antivirus/widget/protection/a;

.field public static final enum c:Lcom/antivirus/widget/protection/a;

.field private static final synthetic e:[Lcom/antivirus/widget/protection/a;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/antivirus/widget/protection/a;

    const-string v1, "PROTECTED"

    const v2, 0x7f020198

    invoke-direct {v0, v1, v3, v2}, Lcom/antivirus/widget/protection/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/antivirus/widget/protection/a;->a:Lcom/antivirus/widget/protection/a;

    new-instance v0, Lcom/antivirus/widget/protection/a;

    const-string v1, "NOT_PROTECTED"

    const v2, 0x7f020173

    invoke-direct {v0, v1, v4, v2}, Lcom/antivirus/widget/protection/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/antivirus/widget/protection/a;->b:Lcom/antivirus/widget/protection/a;

    new-instance v0, Lcom/antivirus/widget/protection/a;

    const-string v1, "BEFORE_FIRST_SCAN"

    const v2, 0x7f02018e

    invoke-direct {v0, v1, v5, v2}, Lcom/antivirus/widget/protection/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/antivirus/widget/protection/a;->c:Lcom/antivirus/widget/protection/a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/antivirus/widget/protection/a;

    sget-object v1, Lcom/antivirus/widget/protection/a;->a:Lcom/antivirus/widget/protection/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/antivirus/widget/protection/a;->b:Lcom/antivirus/widget/protection/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/antivirus/widget/protection/a;->c:Lcom/antivirus/widget/protection/a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/antivirus/widget/protection/a;->e:[Lcom/antivirus/widget/protection/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/antivirus/widget/protection/a;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/antivirus/widget/protection/a;
    .locals 1

    const-class v0, Lcom/antivirus/widget/protection/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/antivirus/widget/protection/a;

    return-object v0
.end method

.method public static values()[Lcom/antivirus/widget/protection/a;
    .locals 1

    sget-object v0, Lcom/antivirus/widget/protection/a;->e:[Lcom/antivirus/widget/protection/a;

    invoke-virtual {v0}, [Lcom/antivirus/widget/protection/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/antivirus/widget/protection/a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/antivirus/widget/protection/a;->d:I

    return v0
.end method
