.class final Lcom/hoi/widget/w;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/hoi/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/hoi/widget/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/hoi/widget/w;->a:Lcom/hoi/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/hoi/widget/w;->a:Lcom/hoi/widget/NumberPicker;

    invoke-static {v0}, Lcom/hoi/widget/NumberPicker;->a(Lcom/hoi/widget/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/hoi/widget/w;->a:Lcom/hoi/widget/NumberPicker;

    iget-object v1, p0, Lcom/hoi/widget/w;->a:Lcom/hoi/widget/NumberPicker;

    invoke-static {v1}, Lcom/hoi/widget/NumberPicker;->b(Lcom/hoi/widget/NumberPicker;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/hoi/widget/NumberPicker;->a(Lcom/hoi/widget/NumberPicker;I)V

    .line 72
    iget-object v0, p0, Lcom/hoi/widget/w;->a:Lcom/hoi/widget/NumberPicker;

    invoke-static {v0}, Lcom/hoi/widget/NumberPicker;->d(Lcom/hoi/widget/NumberPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/hoi/widget/w;->a:Lcom/hoi/widget/NumberPicker;

    invoke-static {v1}, Lcom/hoi/widget/NumberPicker;->c(Lcom/hoi/widget/NumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/hoi/widget/w;->a:Lcom/hoi/widget/NumberPicker;

    invoke-static {v0}, Lcom/hoi/widget/NumberPicker;->e(Lcom/hoi/widget/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/hoi/widget/w;->a:Lcom/hoi/widget/NumberPicker;

    iget-object v1, p0, Lcom/hoi/widget/w;->a:Lcom/hoi/widget/NumberPicker;

    invoke-static {v1}, Lcom/hoi/widget/NumberPicker;->b(Lcom/hoi/widget/NumberPicker;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/hoi/widget/NumberPicker;->a(Lcom/hoi/widget/NumberPicker;I)V

    .line 75
    iget-object v0, p0, Lcom/hoi/widget/w;->a:Lcom/hoi/widget/NumberPicker;

    invoke-static {v0}, Lcom/hoi/widget/NumberPicker;->d(Lcom/hoi/widget/NumberPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/hoi/widget/w;->a:Lcom/hoi/widget/NumberPicker;

    invoke-static {v1}, Lcom/hoi/widget/NumberPicker;->c(Lcom/hoi/widget/NumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
