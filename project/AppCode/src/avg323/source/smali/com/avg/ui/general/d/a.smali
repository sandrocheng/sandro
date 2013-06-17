.class public abstract Lcom/avg/ui/general/d/a;
.super Lcom/avg/ui/general/a/a;


# instance fields
.field private n:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/avg/ui/general/a/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avg/ui/general/d/a;->n:Landroid/support/v4/app/Fragment;

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    new-instance v0, Lcom/avg/ui/general/d/b;

    invoke-direct {v0}, Lcom/avg/ui/general/d/b;-><init>()V

    iput-object v0, p0, Lcom/avg/ui/general/d/a;->n:Landroid/support/v4/app/Fragment;

    iget-object v0, p0, Lcom/avg/ui/general/d/a;->n:Landroid/support/v4/app/Fragment;

    sget v1, Lcom/avg/ui/general/d;->middle_part:I

    const-string v2, "HelpFragment"

    invoke-virtual {p0, v0, v1, v2}, Lcom/avg/ui/general/d/a;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/avg/ui/general/a/a;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/avg/ui/general/e;->fragment_activity:I

    invoke-virtual {p0, v0}, Lcom/avg/ui/general/d/a;->setContentView(I)V

    const/4 v1, 0x1

    sget v2, Lcom/avg/ui/general/c;->ab_ic_help:I

    sget v3, Lcom/avg/ui/general/c;->ab_ic_help_p:I

    sget v0, Lcom/avg/ui/general/g;->help_preference:I

    invoke-virtual {p0, v0}, Lcom/avg/ui/general/d/a;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    sget v6, Lcom/avg/ui/general/d;->header:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/avg/ui/general/d/a;->a(ZIILjava/lang/String;ZI)V

    invoke-virtual {p0}, Lcom/avg/ui/general/d/a;->p()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/avg/ui/general/d/a;->q()V

    invoke-super {p0}, Lcom/avg/ui/general/a/a;->onDestroy()V

    return-void
.end method
