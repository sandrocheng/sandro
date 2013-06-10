.class public final enum Lorg/antivirus/core/b/a/u;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/antivirus/core/b/a/u;

.field public static final enum b:Lorg/antivirus/core/b/a/u;

.field public static final enum c:Lorg/antivirus/core/b/a/u;

.field public static final enum d:Lorg/antivirus/core/b/a/u;

.field private static final synthetic f:[Lorg/antivirus/core/b/a/u;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/antivirus/core/b/a/u;

    const-string v1, "LIC_PREP_CUSTOM"

    invoke-direct {v0, v1, v3, v3}, Lorg/antivirus/core/b/a/u;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/antivirus/core/b/a/u;->a:Lorg/antivirus/core/b/a/u;

    new-instance v0, Lorg/antivirus/core/b/a/u;

    const-string v1, "LIC_PREP_MOBILATION_BASIC_ANDROID"

    const/16 v2, 0xfb

    invoke-direct {v0, v1, v4, v2}, Lorg/antivirus/core/b/a/u;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/antivirus/core/b/a/u;->b:Lorg/antivirus/core/b/a/u;

    new-instance v0, Lorg/antivirus/core/b/a/u;

    const-string v1, "LIC_PREP_MOBILATION_ADVANCED_ANDROID"

    const/16 v2, 0x100

    invoke-direct {v0, v1, v5, v2}, Lorg/antivirus/core/b/a/u;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/antivirus/core/b/a/u;->c:Lorg/antivirus/core/b/a/u;

    new-instance v0, Lorg/antivirus/core/b/a/u;

    const-string v1, "LIC_PREP_MOBILATION_FULL_ANDROID"

    const/16 v2, 0x105

    invoke-direct {v0, v1, v6, v2}, Lorg/antivirus/core/b/a/u;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/antivirus/core/b/a/u;->d:Lorg/antivirus/core/b/a/u;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/antivirus/core/b/a/u;

    sget-object v1, Lorg/antivirus/core/b/a/u;->a:Lorg/antivirus/core/b/a/u;

    aput-object v1, v0, v3

    sget-object v1, Lorg/antivirus/core/b/a/u;->b:Lorg/antivirus/core/b/a/u;

    aput-object v1, v0, v4

    sget-object v1, Lorg/antivirus/core/b/a/u;->c:Lorg/antivirus/core/b/a/u;

    aput-object v1, v0, v5

    sget-object v1, Lorg/antivirus/core/b/a/u;->d:Lorg/antivirus/core/b/a/u;

    aput-object v1, v0, v6

    sput-object v0, Lorg/antivirus/core/b/a/u;->f:[Lorg/antivirus/core/b/a/u;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/antivirus/core/b/a/u;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/antivirus/core/b/a/u;
    .locals 1

    const-class v0, Lorg/antivirus/core/b/a/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/antivirus/core/b/a/u;

    return-object v0
.end method

.method public static values()[Lorg/antivirus/core/b/a/u;
    .locals 1

    sget-object v0, Lorg/antivirus/core/b/a/u;->f:[Lorg/antivirus/core/b/a/u;

    invoke-virtual {v0}, [Lorg/antivirus/core/b/a/u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antivirus/core/b/a/u;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lorg/antivirus/core/b/a/u;->e:I

    return v0
.end method
