.class public final enum Lorg/antivirus/widget/a/h;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/antivirus/widget/a/h;

.field private static final synthetic c:[Lorg/antivirus/widget/a/h;


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/antivirus/widget/a/h;

    const-string v1, "STATE"

    invoke-direct {v0, v1}, Lorg/antivirus/widget/a/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/antivirus/widget/a/h;->a:Lorg/antivirus/widget/a/h;

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/antivirus/widget/a/h;

    const/4 v1, 0x0

    sget-object v2, Lorg/antivirus/widget/a/h;->a:Lorg/antivirus/widget/a/h;

    aput-object v2, v0, v1

    sput-object v0, Lorg/antivirus/widget/a/h;->c:[Lorg/antivirus/widget/a/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const v0, 0x7f02016a

    iput v0, p0, Lorg/antivirus/widget/a/h;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/antivirus/widget/a/h;
    .locals 1

    const-class v0, Lorg/antivirus/widget/a/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/antivirus/widget/a/h;

    return-object v0
.end method

.method public static values()[Lorg/antivirus/widget/a/h;
    .locals 1

    sget-object v0, Lorg/antivirus/widget/a/h;->c:[Lorg/antivirus/widget/a/h;

    invoke-virtual {v0}, [Lorg/antivirus/widget/a/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antivirus/widget/a/h;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lorg/antivirus/widget/a/h;->b:I

    return v0
.end method
