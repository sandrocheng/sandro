.class Lcom/avg/tuneup/battery/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/avg/tuneup/battery/c;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/battery/c;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/battery/j;->b:Lcom/avg/tuneup/battery/c;

    iput-object p2, p0, Lcom/avg/tuneup/battery/j;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/avg/tuneup/battery/j;->a:Landroid/view/View;

    sget v2, Lcom/avg/a/e;->cb_use_ringtone:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/avg/tuneup/battery/j;->b:Lcom/avg/tuneup/battery/c;

    invoke-static {v3}, Lcom/avg/tuneup/battery/c;->o(Lcom/avg/tuneup/battery/c;)Lcom/avg/ui/general/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avg/ui/general/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notifications_use_ring_volume"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/avg/tuneup/battery/j;->a:Landroid/view/View;

    sget v3, Lcom/avg/a/e;->sb_ringtone:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/avg/tuneup/battery/j;->b:Lcom/avg/tuneup/battery/c;

    const/4 v4, 0x2

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/avg/tuneup/battery/c;->a(Lcom/avg/tuneup/battery/c;II)V

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/avg/tuneup/battery/j;->b:Lcom/avg/tuneup/battery/c;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-static {v2, v6, v0}, Lcom/avg/tuneup/battery/c;->a(Lcom/avg/tuneup/battery/c;II)V

    :goto_1
    iget-object v0, p0, Lcom/avg/tuneup/battery/j;->a:Landroid/view/View;

    sget v2, Lcom/avg/a/e;->sb_alarm:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/avg/tuneup/battery/j;->b:Lcom/avg/tuneup/battery/c;

    const/4 v3, 0x4

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-static {v2, v3, v0}, Lcom/avg/tuneup/battery/c;->a(Lcom/avg/tuneup/battery/c;II)V

    iget-object v0, p0, Lcom/avg/tuneup/battery/j;->a:Landroid/view/View;

    sget v2, Lcom/avg/a/e;->sb_media:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/avg/tuneup/battery/j;->b:Lcom/avg/tuneup/battery/c;

    const/4 v3, 0x3

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-static {v2, v3, v0}, Lcom/avg/tuneup/battery/c;->a(Lcom/avg/tuneup/battery/c;II)V

    iget-object v0, p0, Lcom/avg/tuneup/battery/j;->a:Landroid/view/View;

    sget v2, Lcom/avg/a/e;->sb_system:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/avg/tuneup/battery/j;->b:Lcom/avg/tuneup/battery/c;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-static {v2, v1, v0}, Lcom/avg/tuneup/battery/c;->a(Lcom/avg/tuneup/battery/c;II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/avg/tuneup/battery/j;->a:Landroid/view/View;

    sget v2, Lcom/avg/a/e;->sb_notification:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/avg/tuneup/battery/j;->b:Lcom/avg/tuneup/battery/c;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-static {v2, v6, v0}, Lcom/avg/tuneup/battery/c;->a(Lcom/avg/tuneup/battery/c;II)V

    goto :goto_1
.end method
