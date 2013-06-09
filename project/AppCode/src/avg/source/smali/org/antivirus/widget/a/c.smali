.class public final enum Lorg/antivirus/widget/a/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/antivirus/widget/a/c;

.field public static final enum b:Lorg/antivirus/widget/a/c;

.field private static final synthetic d:[Lorg/antivirus/widget/a/c;


# instance fields
.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/antivirus/widget/a/c;

    const-string v1, "SET"

    const v2, 0x7f02013a

    invoke-direct {v0, v1, v3, v2}, Lorg/antivirus/widget/a/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/antivirus/widget/a/c;->a:Lorg/antivirus/widget/a/c;

    new-instance v0, Lorg/antivirus/widget/a/c;

    const-string v1, "NOT_SET"

    const v2, 0x7f02013b

    invoke-direct {v0, v1, v4, v2}, Lorg/antivirus/widget/a/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/antivirus/widget/a/c;->b:Lorg/antivirus/widget/a/c;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/antivirus/widget/a/c;

    sget-object v1, Lorg/antivirus/widget/a/c;->a:Lorg/antivirus/widget/a/c;

    aput-object v1, v0, v3

    sget-object v1, Lorg/antivirus/widget/a/c;->b:Lorg/antivirus/widget/a/c;

    aput-object v1, v0, v4

    sput-object v0, Lorg/antivirus/widget/a/c;->d:[Lorg/antivirus/widget/a/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/antivirus/widget/a/c;->c:I

    return-void
.end method

.method public static a(I)Lorg/antivirus/widget/a/c;
    .locals 1

    if-gtz p0, :cond_0

    sget-object v0, Lorg/antivirus/widget/a/c;->b:Lorg/antivirus/widget/a/c;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/antivirus/widget/a/c;->a:Lorg/antivirus/widget/a/c;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/antivirus/widget/a/c;
    .locals 1

    const-class v0, Lorg/antivirus/widget/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/antivirus/widget/a/c;

    return-object v0
.end method

.method public static values()[Lorg/antivirus/widget/a/c;
    .locals 1

    sget-object v0, Lorg/antivirus/widget/a/c;->d:[Lorg/antivirus/widget/a/c;

    invoke-virtual {v0}, [Lorg/antivirus/widget/a/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antivirus/widget/a/c;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lorg/antivirus/widget/a/c;->c:I

    return v0
.end method
