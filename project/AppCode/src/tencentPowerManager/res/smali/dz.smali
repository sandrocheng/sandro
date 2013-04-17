.class public final Ldz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/powermanager/view/PowerManagerView;


# direct methods
.method public constructor <init>(Lcom/tencent/powermanager/view/PowerManagerView;)V
    .locals 0

    iput-object p1, p0, Ldz;->a:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Ldz;->a:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v0}, Lcom/tencent/powermanager/view/PowerManagerView;->a(Lcom/tencent/powermanager/view/PowerManagerView;)Lcom/tencent/powermanager/uilib/view/CircleBatteryView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/powermanager/uilib/view/CircleBatteryView;->a()V

    return-void
.end method
