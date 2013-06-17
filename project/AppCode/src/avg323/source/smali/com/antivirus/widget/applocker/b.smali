.class public final enum Lcom/antivirus/widget/applocker/b;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/avg/widget/model/plugin/a;


# static fields
.field public static final enum a:Lcom/antivirus/widget/applocker/b;

.field public static final enum b:Lcom/antivirus/widget/applocker/b;

.field private static final synthetic d:[Lcom/antivirus/widget/applocker/b;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/antivirus/widget/applocker/b;

    const-string v1, "SET"

    const v2, 0x7f020175

    invoke-direct {v0, v1, v3, v2}, Lcom/antivirus/widget/applocker/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/antivirus/widget/applocker/b;->a:Lcom/antivirus/widget/applocker/b;

    new-instance v0, Lcom/antivirus/widget/applocker/b;

    const-string v1, "NOT_SET"

    const v2, 0x7f020176

    invoke-direct {v0, v1, v4, v2}, Lcom/antivirus/widget/applocker/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/antivirus/widget/applocker/b;->b:Lcom/antivirus/widget/applocker/b;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/antivirus/widget/applocker/b;

    sget-object v1, Lcom/antivirus/widget/applocker/b;->a:Lcom/antivirus/widget/applocker/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/antivirus/widget/applocker/b;->b:Lcom/antivirus/widget/applocker/b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/antivirus/widget/applocker/b;->d:[Lcom/antivirus/widget/applocker/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/antivirus/widget/applocker/b;->c:I

    return-void
.end method

.method public static a(I)Lcom/antivirus/widget/applocker/b;
    .locals 1

    if-gtz p0, :cond_0

    sget-object v0, Lcom/antivirus/widget/applocker/b;->b:Lcom/antivirus/widget/applocker/b;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/antivirus/widget/applocker/b;->a:Lcom/antivirus/widget/applocker/b;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/antivirus/widget/applocker/b;
    .locals 1

    const-class v0, Lcom/antivirus/widget/applocker/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/antivirus/widget/applocker/b;

    return-object v0
.end method

.method public static values()[Lcom/antivirus/widget/applocker/b;
    .locals 1

    sget-object v0, Lcom/antivirus/widget/applocker/b;->d:[Lcom/antivirus/widget/applocker/b;

    invoke-virtual {v0}, [Lcom/antivirus/widget/applocker/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/antivirus/widget/applocker/b;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/antivirus/widget/applocker/b;->c:I

    return v0
.end method
