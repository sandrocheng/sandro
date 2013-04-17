.class final Ltt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

.field private synthetic c:Ldv;

.field private synthetic d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic e:Lsy;


# direct methods
.method constructor <init>(Lsy;ILcom/tencent/tmsecure/module/aresengine/TelephonyEntity;Ldv;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Ltt;->e:Lsy;

    iput p2, p0, Ltt;->a:I

    iput-object p3, p0, Ltt;->b:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    iput-object p4, p0, Ltt;->c:Ldv;

    iput-object p5, p0, Ltt;->d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Ltt;->e:Lsy;

    iget v1, p0, Ltt;->a:I

    iget-object v2, p0, Ltt;->b:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    invoke-virtual {v0, v1, v2}, Lsy;->a(ILcom/tencent/tmsecure/module/aresengine/TelephonyEntity;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0b01c0

    :goto_0
    iget-object v2, p0, Ltt;->e:Lsy;

    iget-object v2, v2, Lsy;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lha;->a(Landroid/content/Context;I)V

    if-eqz v1, :cond_0

    iget-object v0, p0, Ltt;->c:Ldv;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldv;->a(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Ltt;->d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void

    :cond_1
    const v0, 0x7f0b01c1

    goto :goto_0
.end method
