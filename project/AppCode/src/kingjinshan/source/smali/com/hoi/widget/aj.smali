.class final Lcom/hoi/widget/aj;
.super Ljava/lang/Object;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/hoi/widget/ai;


# direct methods
.method constructor <init>(Lcom/hoi/widget/ai;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/hoi/widget/aj;->b:Lcom/hoi/widget/ai;

    iput-object p2, p0, Lcom/hoi/widget/aj;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/hoi/widget/aj;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/hoi/widget/aj;->b:Lcom/hoi/widget/ai;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v0, v1}, Lcom/hoi/widget/ai;->a(Lcom/hoi/widget/ai;I)I

    move-result v0

    .line 65
    iget-object v1, p0, Lcom/hoi/widget/aj;->b:Lcom/hoi/widget/ai;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hoi/widget/ai;->a(Lcom/hoi/widget/ai;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/hoi/widget/aj;->b:Lcom/hoi/widget/ai;

    invoke-static {v1}, Lcom/hoi/widget/ai;->a(Lcom/hoi/widget/ai;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/hoi/widget/aj;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
