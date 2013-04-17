.class final Lbgw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lbgt;


# direct methods
.method constructor <init>(Lbgt;)V
    .locals 0

    iput-object p1, p0, Lbgw;->a:Lbgt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lbgw;->a:Lbgt;

    invoke-static {v1}, Lbgt;->r(Lbgt;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    sget-object v2, Lbft;->a:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    iget-object v5, p0, Lbgw;->a:Lbgt;

    invoke-static {v5}, Lbgt;->s(Lbgt;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, La;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lbgw;->a:Lbgt;

    invoke-static {v5}, Lbgt;->t(Lbgt;)Lho;

    move-result-object v5

    invoke-virtual {v5}, Lho;->cd()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, La;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-static {v4}, La;->g(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lbgw;->a:Lbgt;

    invoke-static {v1}, Lbgt;->r(Lbgt;)I

    move-result v1

    sget v2, Lme;->b:I

    if-ne v1, v2, :cond_3

    sget-object v1, Lbft;->a:[Ljava/lang/String;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    invoke-static {v3}, La;->g(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
