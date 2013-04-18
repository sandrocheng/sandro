.class final Lcom/keniu/security/traffic/l;
.super Ljava/lang/Object;
.source "MultiDirectionSlidingDrawer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;


# direct methods
.method synthetic constructor <init>(Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;)V
    .locals 1
    .parameter

    .prologue
    .line 1131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/traffic/l;-><init>(Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1131
    iput-object p1, p0, Lcom/keniu/security/traffic/l;->a:Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/keniu/security/traffic/l;->a:Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;

    invoke-static {v0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->a(Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1146
    :goto_0
    return-void

    .line 1141
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/l;->a:Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;

    invoke-static {v0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->b(Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1142
    iget-object v0, p0, Lcom/keniu/security/traffic/l;->a:Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->b()V

    goto :goto_0

    .line 1144
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/l;->a:Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->a()V

    goto :goto_0
.end method
