.class public final Leg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lde;

.field private synthetic c:Lcom/tencent/powermanager/view/PowerManagerView;


# direct methods
.method public constructor <init>(Lcom/tencent/powermanager/view/PowerManagerView;ILde;)V
    .locals 0

    iput-object p1, p0, Leg;->c:Lcom/tencent/powermanager/view/PowerManagerView;

    iput p2, p0, Leg;->a:I

    iput-object p3, p0, Leg;->b:Lde;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Leg;->c:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v0}, Lcom/tencent/powermanager/view/PowerManagerView;->i(Lcom/tencent/powermanager/view/PowerManagerView;)Lag;

    move-result-object v0

    iget-object v1, p0, Leg;->c:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v1}, Lcom/tencent/powermanager/view/PowerManagerView;->t(Lcom/tencent/powermanager/view/PowerManagerView;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Leg;->a:I

    iget-object v3, p0, Leg;->c:Lcom/tencent/powermanager/view/PowerManagerView;

    iget v4, p0, Leg;->a:I

    invoke-static {v3, v4}, Lcom/tencent/powermanager/view/PowerManagerView;->a(Lcom/tencent/powermanager/view/PowerManagerView;I)Lbf;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lag;->a(Landroid/content/Context;ILbf;)V

    iget-object v0, p0, Leg;->c:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v0}, Lcom/tencent/powermanager/view/PowerManagerView;->g(Lcom/tencent/powermanager/view/PowerManagerView;)V

    iget-object v0, p0, Leg;->c:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v0}, Lcom/tencent/powermanager/view/PowerManagerView;->h(Lcom/tencent/powermanager/view/PowerManagerView;)Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;

    move-result-object v0

    iget-object v1, p0, Leg;->c:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v1}, Lcom/tencent/powermanager/view/PowerManagerView;->b(Lcom/tencent/powermanager/view/PowerManagerView;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;->setDataList(Ljava/util/List;)V

    iget-object v0, p0, Leg;->c:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v0}, Lcom/tencent/powermanager/view/PowerManagerView;->h(Lcom/tencent/powermanager/view/PowerManagerView;)Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;->a()V

    iget-object v0, p0, Leg;->b:Lde;

    invoke-virtual {v0}, Lde;->dismiss()V

    return-void
.end method
