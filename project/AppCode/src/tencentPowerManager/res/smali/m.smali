.class final Lm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Law;

.field private synthetic b:Landroid/content/Context;

.field private synthetic c:Lde;


# direct methods
.method constructor <init>(Law;Landroid/content/Context;Lde;)V
    .locals 0

    iput-object p1, p0, Lm;->a:Law;

    iput-object p2, p0, Lm;->b:Landroid/content/Context;

    iput-object p3, p0, Lm;->c:Lde;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Le;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm;->a:Law;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lau;

    invoke-direct {v2, v0}, Lau;-><init>(Law;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_0
    iget-object v0, p0, Lm;->c:Lde;

    invoke-virtual {v0}, Lde;->dismiss()V

    const/4 v0, 0x0

    sput-boolean v0, Le;->a:Z

    return-void

    :cond_0
    iget-object v0, p0, Lm;->b:Landroid/content/Context;

    iget-object v1, p0, Lm;->b:Landroid/content/Context;

    const v2, 0x7f060091

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lp;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
