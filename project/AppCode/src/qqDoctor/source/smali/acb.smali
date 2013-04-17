.class public final Lacb;
.super Laby;


# instance fields
.field private d:Lig;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "ThumbnailLoaderServiceFolder"

    invoke-direct {p0, v0}, Laby;-><init>(Ljava/lang/String;)V

    new-instance v0, Lig;

    invoke-direct {v0}, Lig;-><init>()V

    iput-object v0, p0, Lacb;->d:Lig;

    return-void
.end method


# virtual methods
.method public final a(Llr;)V
    .locals 4

    iget-object v1, p0, Lacb;->d:Lig;

    move-object v0, p1

    check-cast v0, Llp;

    invoke-virtual {p1}, Llr;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Llr;->c()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lig;->a(Llp;Ljava/lang/String;I)Z

    return-void
.end method
