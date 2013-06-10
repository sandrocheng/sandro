.class public final enum Lorg/antivirus/widget/a/e;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/antivirus/widget/a/e;

.field public static final enum b:Lorg/antivirus/widget/a/e;

.field private static final synthetic e:[Lorg/antivirus/widget/a/e;


# instance fields
.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lorg/antivirus/widget/a/e;

    const-string v1, "ON"

    const v2, 0x7f020155

    const-string v3, "flashlightOff"

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/antivirus/widget/a/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/antivirus/widget/a/e;->a:Lorg/antivirus/widget/a/e;

    new-instance v0, Lorg/antivirus/widget/a/e;

    const-string v1, "OFF"

    const v2, 0x7f020154

    const-string v3, "flashlightOn"

    invoke-direct {v0, v1, v5, v2, v3}, Lorg/antivirus/widget/a/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/antivirus/widget/a/e;->b:Lorg/antivirus/widget/a/e;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/antivirus/widget/a/e;

    sget-object v1, Lorg/antivirus/widget/a/e;->a:Lorg/antivirus/widget/a/e;

    aput-object v1, v0, v4

    sget-object v1, Lorg/antivirus/widget/a/e;->b:Lorg/antivirus/widget/a/e;

    aput-object v1, v0, v5

    sput-object v0, Lorg/antivirus/widget/a/e;->e:[Lorg/antivirus/widget/a/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/antivirus/widget/a/e;->c:I

    iput-object p4, p0, Lorg/antivirus/widget/a/e;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/antivirus/widget/a/e;
    .locals 1

    const-class v0, Lorg/antivirus/widget/a/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/antivirus/widget/a/e;

    return-object v0
.end method

.method public static values()[Lorg/antivirus/widget/a/e;
    .locals 1

    sget-object v0, Lorg/antivirus/widget/a/e;->e:[Lorg/antivirus/widget/a/e;

    invoke-virtual {v0}, [Lorg/antivirus/widget/a/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antivirus/widget/a/e;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lorg/antivirus/widget/a/e;->c:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/widget/a/e;->d:Ljava/lang/String;

    return-object v0
.end method
