.class public final enum Lorg/antivirus/widget/a/b;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/antivirus/widget/a/b;

.field private static final synthetic c:[Lorg/antivirus/widget/a/b;


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/antivirus/widget/a/b;

    const-string v1, "LAST_BACKUP"

    invoke-direct {v0, v1}, Lorg/antivirus/widget/a/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/antivirus/widget/a/b;->a:Lorg/antivirus/widget/a/b;

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/antivirus/widget/a/b;

    const/4 v1, 0x0

    sget-object v2, Lorg/antivirus/widget/a/b;->a:Lorg/antivirus/widget/a/b;

    aput-object v2, v0, v1

    sput-object v0, Lorg/antivirus/widget/a/b;->c:[Lorg/antivirus/widget/a/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const v0, 0x7f020139

    iput v0, p0, Lorg/antivirus/widget/a/b;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/antivirus/widget/a/b;
    .locals 1

    const-class v0, Lorg/antivirus/widget/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/antivirus/widget/a/b;

    return-object v0
.end method

.method public static values()[Lorg/antivirus/widget/a/b;
    .locals 1

    sget-object v0, Lorg/antivirus/widget/a/b;->c:[Lorg/antivirus/widget/a/b;

    invoke-virtual {v0}, [Lorg/antivirus/widget/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antivirus/widget/a/b;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lorg/antivirus/widget/a/b;->b:I

    return v0
.end method
