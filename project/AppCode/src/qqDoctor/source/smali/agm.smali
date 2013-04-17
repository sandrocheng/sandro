.class public final Lagm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lkv;

.field private synthetic b:Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;Lkv;)V
    .locals 0

    iput-object p1, p0, Lagm;->b:Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;

    iput-object p2, p0, Lagm;->a:Lkv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lagm;->b:Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;

    iget-object v1, p0, Lagm;->a:Lkv;

    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->a(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;Lkv;)V

    iget-object v0, p0, Lagm;->b:Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->h(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;)V

    return-void
.end method
