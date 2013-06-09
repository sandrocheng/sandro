.class public final enum Lorg/antivirus/widget/a/f;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/antivirus/widget/a/f;

.field public static final enum b:Lorg/antivirus/widget/a/f;

.field public static final enum c:Lorg/antivirus/widget/a/f;

.field private static final synthetic e:[Lorg/antivirus/widget/a/f;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/antivirus/widget/a/f;

    const-string v1, "PROTECTED"

    const v2, 0x7f02015d

    invoke-direct {v0, v1, v3, v2}, Lorg/antivirus/widget/a/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/antivirus/widget/a/f;->a:Lorg/antivirus/widget/a/f;

    new-instance v0, Lorg/antivirus/widget/a/f;

    const-string v1, "NOT_PROTECTED"

    const v2, 0x7f020138

    invoke-direct {v0, v1, v4, v2}, Lorg/antivirus/widget/a/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/antivirus/widget/a/f;->b:Lorg/antivirus/widget/a/f;

    new-instance v0, Lorg/antivirus/widget/a/f;

    const-string v1, "BEFORE_FIRST_SCAN"

    const v2, 0x7f020153

    invoke-direct {v0, v1, v5, v2}, Lorg/antivirus/widget/a/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/antivirus/widget/a/f;->c:Lorg/antivirus/widget/a/f;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/antivirus/widget/a/f;

    sget-object v1, Lorg/antivirus/widget/a/f;->a:Lorg/antivirus/widget/a/f;

    aput-object v1, v0, v3

    sget-object v1, Lorg/antivirus/widget/a/f;->b:Lorg/antivirus/widget/a/f;

    aput-object v1, v0, v4

    sget-object v1, Lorg/antivirus/widget/a/f;->c:Lorg/antivirus/widget/a/f;

    aput-object v1, v0, v5

    sput-object v0, Lorg/antivirus/widget/a/f;->e:[Lorg/antivirus/widget/a/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/antivirus/widget/a/f;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/antivirus/widget/a/f;
    .locals 1

    const-class v0, Lorg/antivirus/widget/a/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/antivirus/widget/a/f;

    return-object v0
.end method

.method public static values()[Lorg/antivirus/widget/a/f;
    .locals 1

    sget-object v0, Lorg/antivirus/widget/a/f;->e:[Lorg/antivirus/widget/a/f;

    invoke-virtual {v0}, [Lorg/antivirus/widget/a/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antivirus/widget/a/f;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lorg/antivirus/widget/a/f;->d:I

    return v0
.end method
