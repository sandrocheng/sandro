.class public final Lbd;
.super Lfh;


# instance fields
.field public a:Lbe;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfh;-><init>()V

    return-void
.end method

.method public constructor <init>(Lbe;)V
    .locals 2

    invoke-direct {p0}, Lfh;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lbe;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbd;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lbe;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbd;->b:Ljava/lang/String;

    iput-object p1, p0, Lbd;->a:Lbe;

    return-void
.end method
