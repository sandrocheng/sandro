.class public final Lafm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/UninstallWarningActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/UninstallWarningActivity;)V
    .locals 0

    iput-object p1, p0, Lafm;->a:Lcom/tencent/qqpimsecure/ui/activity/UninstallWarningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lafm;->a:Lcom/tencent/qqpimsecure/ui/activity/UninstallWarningActivity;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/UninstallWarningActivity;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Lafm;->a:Lcom/tencent/qqpimsecure/ui/activity/UninstallWarningActivity;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/UninstallWarningActivity;->finish()V

    return-void
.end method
