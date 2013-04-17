.class public final Lbjl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic c:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;ILcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbjl;->c:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    iput p2, p0, Lbjl;->a:I

    iput-object p3, p0, Lbjl;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lbjl;->c:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    iget v1, p0, Lbjl;->a:I

    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->b(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;I)Z

    iget-object v0, p0, Lbjl;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method
