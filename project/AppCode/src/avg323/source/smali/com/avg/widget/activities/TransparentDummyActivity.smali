.class public Lcom/avg/widget/activities/TransparentDummyActivity;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/avg/widget/e;->empty_layout:I

    invoke-virtual {p0, v0}, Lcom/avg/widget/activities/TransparentDummyActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/avg/widget/activities/TransparentDummyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "FEATURE_EXPIRED_TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "FEATURE_EXPIRED_SUBTITLE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "FEATURE_EXPIRED_BODY"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v4, "FEATURE_EXPIRED_ICON"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eq v2, v1, :cond_0

    if-eq v3, v1, :cond_0

    if-eq v5, v1, :cond_0

    if-ne v4, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/avg/widget/activities/TransparentDummyActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v2}, Lcom/avg/widget/activities/TransparentDummyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/avg/widget/activities/TransparentDummyActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/avg/widget/activities/TransparentDummyActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/avg/ui/general/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/Dialog;

    goto :goto_0
.end method
