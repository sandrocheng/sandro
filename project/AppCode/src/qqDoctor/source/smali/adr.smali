.class public final Ladr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;)V
    .locals 0

    iput-object p1, p0, Ladr;->a:Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Ladr;->a:Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;->finish()V

    return-void
.end method
