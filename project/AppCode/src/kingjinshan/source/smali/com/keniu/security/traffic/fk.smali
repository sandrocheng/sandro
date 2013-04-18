.class final Lcom/keniu/security/traffic/fk;
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
    .line 186
    iput-object p1, p0, Lcom/keniu/security/traffic/fk;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/keniu/security/traffic/fk;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->finish()V

    .line 191
    return-void
.end method
