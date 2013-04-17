.class final Lvw;
.super Ljava/lang/Object;

# interfaces
.implements Lvk$b;


# instance fields
.field final synthetic a:Llf;

.field final synthetic b:Lvk;


# direct methods
.method constructor <init>(Lvk;Llf;)V
    .locals 0

    iput-object p1, p0, Lvw;->b:Lvk;

    iput-object p2, p0, Lvw;->a:Llf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    new-instance v0, Lvx;

    invoke-direct {v0, p0}, Lvx;-><init>(Lvw;)V

    invoke-virtual {v0}, Lvx;->start()V

    return-void
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lvw;->b:Lvk;

    iget-object v1, p0, Lvw;->a:Llf;

    invoke-static {v0, v1}, Lvk;->a(Lvk;Llf;)Lhq;

    move-result-object v0

    iget-object v1, p0, Lvw;->a:Llf;

    iget-object v1, v1, Llf;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lhq;->a(Ljava/lang/String;)Llf;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
