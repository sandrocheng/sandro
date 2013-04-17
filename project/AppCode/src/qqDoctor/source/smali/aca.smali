.class public final Laca;
.super Laby;


# instance fields
.field private d:Lif;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "ThumbnailLoaderServiceFile"

    invoke-direct {p0, v0}, Laby;-><init>(Ljava/lang/String;)V

    new-instance v0, Lif;

    invoke-direct {v0}, Lif;-><init>()V

    iput-object v0, p0, Laca;->d:Lif;

    return-void
.end method


# virtual methods
.method public final a(Llr;)V
    .locals 3

    iget-object v1, p0, Laca;->d:Lif;

    move-object v0, p1

    check-cast v0, Lln;

    invoke-virtual {p1}, Llr;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lif;->a(Lln;Ljava/lang/String;)Z

    return-void
.end method
