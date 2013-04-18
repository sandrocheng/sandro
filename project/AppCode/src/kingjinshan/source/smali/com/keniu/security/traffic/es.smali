.class final Lcom/keniu/security/traffic/es;
.super Ljava/lang/Object;
.source "TrafficZiFeiSettingActivity2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;)V
    .locals 0
    .parameter

    .prologue
    .line 467
    iput-object p1, p0, Lcom/keniu/security/traffic/es;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 471
    iget-object v0, p0, Lcom/keniu/security/traffic/es;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->finish()V

    .line 472
    return-void
.end method
