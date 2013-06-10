.class public final enum Lorg/antivirus/core/a/d;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/antivirus/core/a/d;

.field public static final enum b:Lorg/antivirus/core/a/d;

.field public static final enum c:Lorg/antivirus/core/a/d;

.field public static final enum d:Lorg/antivirus/core/a/d;

.field public static final enum e:Lorg/antivirus/core/a/d;

.field public static final enum f:Lorg/antivirus/core/a/d;

.field public static final enum g:Lorg/antivirus/core/a/d;

.field private static final synthetic j:[Lorg/antivirus/core/a/d;


# instance fields
.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lorg/antivirus/core/a/d;

    const-string v1, "REGULAR_REPORT"

    const/16 v2, 0x43a

    invoke-direct {v0, v1, v5, v5, v2}, Lorg/antivirus/core/a/d;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/antivirus/core/a/d;->a:Lorg/antivirus/core/a/d;

    new-instance v0, Lorg/antivirus/core/a/d;

    const-string v1, "INSTALLATION_SUCCESS"

    const/16 v2, 0x43b

    invoke-direct {v0, v1, v6, v6, v2}, Lorg/antivirus/core/a/d;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/antivirus/core/a/d;->b:Lorg/antivirus/core/a/d;

    new-instance v0, Lorg/antivirus/core/a/d;

    const-string v1, "INSTALLATION_FAILED"

    const/16 v2, 0x43c

    invoke-direct {v0, v1, v7, v7, v2}, Lorg/antivirus/core/a/d;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/antivirus/core/a/d;->c:Lorg/antivirus/core/a/d;

    new-instance v0, Lorg/antivirus/core/a/d;

    const-string v1, "UNINSTALLATION"

    const/16 v2, 0x43d

    invoke-direct {v0, v1, v8, v8, v2}, Lorg/antivirus/core/a/d;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/antivirus/core/a/d;->d:Lorg/antivirus/core/a/d;

    new-instance v0, Lorg/antivirus/core/a/d;

    const-string v1, "LICENSE_CHANGE"

    const/16 v2, 0x43e

    invoke-direct {v0, v1, v9, v9, v2}, Lorg/antivirus/core/a/d;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/antivirus/core/a/d;->e:Lorg/antivirus/core/a/d;

    new-instance v0, Lorg/antivirus/core/a/d;

    const-string v1, "ERROR_REPORTING"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/16 v4, 0x43f

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/antivirus/core/a/d;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/antivirus/core/a/d;->f:Lorg/antivirus/core/a/d;

    new-instance v0, Lorg/antivirus/core/a/d;

    const-string v1, "HEARTBEAT"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/16 v4, 0x440

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/antivirus/core/a/d;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/antivirus/core/a/d;->g:Lorg/antivirus/core/a/d;

    const/4 v0, 0x7

    new-array v0, v0, [Lorg/antivirus/core/a/d;

    sget-object v1, Lorg/antivirus/core/a/d;->a:Lorg/antivirus/core/a/d;

    aput-object v1, v0, v5

    sget-object v1, Lorg/antivirus/core/a/d;->b:Lorg/antivirus/core/a/d;

    aput-object v1, v0, v6

    sget-object v1, Lorg/antivirus/core/a/d;->c:Lorg/antivirus/core/a/d;

    aput-object v1, v0, v7

    sget-object v1, Lorg/antivirus/core/a/d;->d:Lorg/antivirus/core/a/d;

    aput-object v1, v0, v8

    sget-object v1, Lorg/antivirus/core/a/d;->e:Lorg/antivirus/core/a/d;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lorg/antivirus/core/a/d;->f:Lorg/antivirus/core/a/d;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/antivirus/core/a/d;->g:Lorg/antivirus/core/a/d;

    aput-object v2, v0, v1

    sput-object v0, Lorg/antivirus/core/a/d;->j:[Lorg/antivirus/core/a/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/antivirus/core/a/d;->h:I

    iput p4, p0, Lorg/antivirus/core/a/d;->i:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/antivirus/core/a/d;
    .locals 1

    const-class v0, Lorg/antivirus/core/a/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/antivirus/core/a/d;

    return-object v0
.end method

.method public static values()[Lorg/antivirus/core/a/d;
    .locals 1

    sget-object v0, Lorg/antivirus/core/a/d;->j:[Lorg/antivirus/core/a/d;

    invoke-virtual {v0}, [Lorg/antivirus/core/a/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antivirus/core/a/d;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lorg/antivirus/core/a/d;->h:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lorg/antivirus/core/a/d;->i:I

    return v0
.end method
