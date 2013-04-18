.class final Lcom/keniu/security/traffic/fi;
.super Ljava/lang/Object;
.source "TrafficZiFeiSubSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 79
    iget-object v0, p0, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    const v1, 0x7f0b02cc

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 184
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    const v1, 0x7f0b02cd

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    iget-object v1, p0, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v1

    iget-object v1, v1, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-static {v1}, Lcn/com/wali/zft/plugin;->getbrands(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 93
    iget-object v1, p0, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    iget-object v0, p0, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->c(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)Ljava/util/ArrayList;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;[Ljava/lang/String;)[Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    iget-object v1, p0, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->d(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-static {v2}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v2

    iget-object v2, v2, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    const v1, 0x7f0b02ce

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)Lcom/keniu/security/util/aw;

    move-result-object v0

    if-nez v0, :cond_4

    .line 104
    iget-object v0, p0, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    new-instance v1, Lcom/keniu/security/util/aw;

    invoke-direct {v1}, Lcom/keniu/security/util/aw;-><init>()V

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;Lcom/keniu/security/util/aw;)Lcom/keniu/security/util/aw;

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)Lcom/keniu/security/util/aw;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    const v2, 0x7f0b0582

    const v3, 0x7f0b0585

    invoke-virtual {v0, v1, v2, v3}, Lcom/keniu/security/util/aw;->a(Landroid/content/Context;II)V

    .line 109
    new-instance v0, Lcom/keniu/security/traffic/fj;

    invoke-direct {v0, p0}, Lcom/keniu/security/traffic/fj;-><init>(Lcom/keniu/security/traffic/fi;)V

    invoke-virtual {v0}, Lcom/keniu/security/traffic/fj;->start()V

    goto/16 :goto_0
.end method
