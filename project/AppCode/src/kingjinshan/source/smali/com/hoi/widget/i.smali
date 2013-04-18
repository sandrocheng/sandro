.class final Lcom/hoi/widget/i;
.super Ljava/lang/Object;
.source "HorizontalNumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/hoi/widget/HorizontalNumberPicker;


# direct methods
.method constructor <init>(Lcom/hoi/widget/HorizontalNumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/hoi/widget/i;->a:Lcom/hoi/widget/HorizontalNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/hoi/widget/i;->a:Lcom/hoi/widget/HorizontalNumberPicker;

    invoke-static {v0}, Lcom/hoi/widget/HorizontalNumberPicker;->a(Lcom/hoi/widget/HorizontalNumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/hoi/widget/i;->a:Lcom/hoi/widget/HorizontalNumberPicker;

    iget-object v1, p0, Lcom/hoi/widget/i;->a:Lcom/hoi/widget/HorizontalNumberPicker;

    invoke-static {v1}, Lcom/hoi/widget/HorizontalNumberPicker;->b(Lcom/hoi/widget/HorizontalNumberPicker;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/hoi/widget/HorizontalNumberPicker;->a(Lcom/hoi/widget/HorizontalNumberPicker;I)V

    .line 61
    iget-object v0, p0, Lcom/hoi/widget/i;->a:Lcom/hoi/widget/HorizontalNumberPicker;

    invoke-static {v0}, Lcom/hoi/widget/HorizontalNumberPicker;->d(Lcom/hoi/widget/HorizontalNumberPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/hoi/widget/i;->a:Lcom/hoi/widget/HorizontalNumberPicker;

    invoke-static {v1}, Lcom/hoi/widget/HorizontalNumberPicker;->c(Lcom/hoi/widget/HorizontalNumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/hoi/widget/i;->a:Lcom/hoi/widget/HorizontalNumberPicker;

    invoke-static {v0}, Lcom/hoi/widget/HorizontalNumberPicker;->e(Lcom/hoi/widget/HorizontalNumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/hoi/widget/i;->a:Lcom/hoi/widget/HorizontalNumberPicker;

    iget-object v1, p0, Lcom/hoi/widget/i;->a:Lcom/hoi/widget/HorizontalNumberPicker;

    invoke-static {v1}, Lcom/hoi/widget/HorizontalNumberPicker;->b(Lcom/hoi/widget/HorizontalNumberPicker;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/hoi/widget/HorizontalNumberPicker;->a(Lcom/hoi/widget/HorizontalNumberPicker;I)V

    .line 64
    iget-object v0, p0, Lcom/hoi/widget/i;->a:Lcom/hoi/widget/HorizontalNumberPicker;

    invoke-static {v0}, Lcom/hoi/widget/HorizontalNumberPicker;->d(Lcom/hoi/widget/HorizontalNumberPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/hoi/widget/i;->a:Lcom/hoi/widget/HorizontalNumberPicker;

    invoke-static {v1}, Lcom/hoi/widget/HorizontalNumberPicker;->c(Lcom/hoi/widget/HorizontalNumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
