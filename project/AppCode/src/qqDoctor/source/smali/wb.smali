.class final Lwb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lvk;


# direct methods
.method constructor <init>(Lvk;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lwb;->b:Lvk;

    iput-object p2, p0, Lwb;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lwb;->b:Lvk;

    iget-object v0, v0, Lvk;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lsy;->a(Landroid/app/Activity;)Lsy;

    move-result-object v0

    iget-object v1, p0, Lwb;->a:Ljava/util/List;

    const/4 v2, 0x1

    iget-object v3, p0, Lwb;->b:Lvk;

    iget-object v3, v3, Lvk;->g:Ldv;

    invoke-virtual {v0, v1, v2, v3}, Lsy;->a(Ljava/util/List;ZLdv;)V

    return-void
.end method
