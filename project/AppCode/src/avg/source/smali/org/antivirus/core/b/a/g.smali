.class public final Lorg/antivirus/core/b/a/g;
.super Ljava/lang/Object;


# static fields
.field static final d:[Lorg/antivirus/core/b/a/g;

.field static final e:I


# instance fields
.field public final a:Lorg/antivirus/core/b/a/s;

.field public final b:Lorg/antivirus/core/b/a/q;

.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x7

    new-array v0, v0, [Lorg/antivirus/core/b/a/g;

    new-instance v1, Lorg/antivirus/core/b/a/g;

    sget-object v2, Lorg/antivirus/core/b/a/s;->c:Lorg/antivirus/core/b/a/s;

    sget-object v3, Lorg/antivirus/core/b/a/q;->a:Lorg/antivirus/core/b/a/q;

    invoke-direct {v1, v2, v3, v5}, Lorg/antivirus/core/b/a/g;-><init>(Lorg/antivirus/core/b/a/s;Lorg/antivirus/core/b/a/q;Z)V

    aput-object v1, v0, v5

    new-instance v1, Lorg/antivirus/core/b/a/g;

    sget-object v2, Lorg/antivirus/core/b/a/s;->d:Lorg/antivirus/core/b/a/s;

    sget-object v3, Lorg/antivirus/core/b/a/q;->a:Lorg/antivirus/core/b/a/q;

    invoke-direct {v1, v2, v3, v5}, Lorg/antivirus/core/b/a/g;-><init>(Lorg/antivirus/core/b/a/s;Lorg/antivirus/core/b/a/q;Z)V

    aput-object v1, v0, v6

    const/4 v1, 0x2

    new-instance v2, Lorg/antivirus/core/b/a/g;

    sget-object v3, Lorg/antivirus/core/b/a/s;->e:Lorg/antivirus/core/b/a/s;

    sget-object v4, Lorg/antivirus/core/b/a/q;->c:Lorg/antivirus/core/b/a/q;

    invoke-direct {v2, v3, v4, v5}, Lorg/antivirus/core/b/a/g;-><init>(Lorg/antivirus/core/b/a/s;Lorg/antivirus/core/b/a/q;Z)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lorg/antivirus/core/b/a/g;

    sget-object v3, Lorg/antivirus/core/b/a/s;->e:Lorg/antivirus/core/b/a/s;

    sget-object v4, Lorg/antivirus/core/b/a/q;->b:Lorg/antivirus/core/b/a/q;

    invoke-direct {v2, v3, v4, v5}, Lorg/antivirus/core/b/a/g;-><init>(Lorg/antivirus/core/b/a/s;Lorg/antivirus/core/b/a/q;Z)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lorg/antivirus/core/b/a/g;

    sget-object v3, Lorg/antivirus/core/b/a/s;->e:Lorg/antivirus/core/b/a/s;

    sget-object v4, Lorg/antivirus/core/b/a/q;->d:Lorg/antivirus/core/b/a/q;

    invoke-direct {v2, v3, v4, v5}, Lorg/antivirus/core/b/a/g;-><init>(Lorg/antivirus/core/b/a/s;Lorg/antivirus/core/b/a/q;Z)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lorg/antivirus/core/b/a/g;

    sget-object v3, Lorg/antivirus/core/b/a/s;->b:Lorg/antivirus/core/b/a/s;

    sget-object v4, Lorg/antivirus/core/b/a/q;->a:Lorg/antivirus/core/b/a/q;

    invoke-direct {v2, v3, v4, v5}, Lorg/antivirus/core/b/a/g;-><init>(Lorg/antivirus/core/b/a/s;Lorg/antivirus/core/b/a/q;Z)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lorg/antivirus/core/b/a/g;

    sget-object v3, Lorg/antivirus/core/b/a/s;->e:Lorg/antivirus/core/b/a/s;

    sget-object v4, Lorg/antivirus/core/b/a/q;->b:Lorg/antivirus/core/b/a/q;

    invoke-direct {v2, v3, v4, v6}, Lorg/antivirus/core/b/a/g;-><init>(Lorg/antivirus/core/b/a/s;Lorg/antivirus/core/b/a/q;Z)V

    aput-object v2, v0, v1

    sput-object v0, Lorg/antivirus/core/b/a/g;->d:[Lorg/antivirus/core/b/a/g;

    array-length v0, v0

    sput v0, Lorg/antivirus/core/b/a/g;->e:I

    return-void
.end method

.method private constructor <init>(Lorg/antivirus/core/b/a/s;Lorg/antivirus/core/b/a/q;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/antivirus/core/b/a/g;->a:Lorg/antivirus/core/b/a/s;

    iput-object p2, p0, Lorg/antivirus/core/b/a/g;->b:Lorg/antivirus/core/b/a/q;

    iput-boolean p3, p0, Lorg/antivirus/core/b/a/g;->c:Z

    return-void
.end method
