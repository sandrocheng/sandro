.class public final Lem;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Z

.field private synthetic c:Landroid/content/Context;

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Ljava/lang/String;

.field private synthetic f:Ljava/lang/String;

.field private synthetic g:Z

.field private synthetic h:Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/tencent/qqpimsecure/uilib/service/IRetryListener;)V
    .locals 0

    iput-object p1, p0, Lem;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iput-boolean p2, p0, Lem;->b:Z

    iput-object p3, p0, Lem;->c:Landroid/content/Context;

    iput-object p4, p0, Lem;->d:Ljava/lang/String;

    iput-object p5, p0, Lem;->e:Ljava/lang/String;

    iput-object p6, p0, Lem;->f:Ljava/lang/String;

    iput-boolean p7, p0, Lem;->g:Z

    iput-object p8, p0, Lem;->h:Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    const v5, 0x7f0b0a24

    const/4 v2, 0x1

    const/4 v10, 0x0

    iget-object v0, p0, Lem;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->resetDialog()V

    iget-boolean v0, p0, Lem;->b:Z

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lem;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lem;->c:Landroid/content/Context;

    iget-object v3, p0, Lem;->d:Ljava/lang/String;

    iget-object v4, p0, Lem;->e:Ljava/lang/String;

    iget-object v7, p0, Lem;->f:Ljava/lang/String;

    iget-boolean v8, p0, Lem;->g:Z

    iget-object v9, p0, Lem;->h:Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;

    const v6, 0x7f0b0033

    invoke-static/range {v0 .. v9}, La;->a(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ZLcom/tencent/qqpimsecure/uilib/service/IRetryListener;)V

    :goto_1
    return-void

    :cond_0
    move v0, v10

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lem;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lem;->c:Landroid/content/Context;

    iget-object v3, p0, Lem;->d:Ljava/lang/String;

    iget-object v4, p0, Lem;->e:Ljava/lang/String;

    iget-object v7, p0, Lem;->f:Ljava/lang/String;

    iget-boolean v8, p0, Lem;->g:Z

    iget-object v9, p0, Lem;->h:Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;

    const v6, 0x7f0b0a29

    move v2, v10

    invoke-static/range {v0 .. v9}, La;->a(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;ZLcom/tencent/qqpimsecure/uilib/service/IRetryListener;)V

    goto :goto_1
.end method
