.class public Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;
.super Ljava/lang/Object;


# static fields
.field public static mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field public static wmBaseParams:Landroid/view/WindowManager$LayoutParams;

.field public static wmBatteryParams:Landroid/view/WindowManager$LayoutParams;

.field public static wmColorRemindParams:Landroid/view/WindowManager$LayoutParams;

.field public static wmDialogWindowBackgroundParams:Landroid/view/WindowManager$LayoutParams;

.field public static wmDialogWindowParams:Landroid/view/WindowManager$LayoutParams;

.field public static wmLocationParams:Landroid/view/WindowManager$LayoutParams;

.field public static wmPermissionParams:Landroid/view/WindowManager$LayoutParams;

.field public static wmTrafficParams:Landroid/view/WindowManager$LayoutParams;

.field public static wmWhirlPoolParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x11

    const/16 v5, 0x33

    const/16 v4, 0x7d3

    const/4 v3, 0x1

    const/4 v2, -0x2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmBaseParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmBaseParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmBaseParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmBaseParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmBaseParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmBaseParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmTrafficParams:Landroid/view/WindowManager$LayoutParams;

    sget-object v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmBaseParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmTrafficParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmLocationParams:Landroid/view/WindowManager$LayoutParams;

    sget-object v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmBaseParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmPermissionParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmPermissionParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmPermissionParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmPermissionParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmPermissionParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmPermissionParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmPermissionParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmColorRemindParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmColorRemindParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmColorRemindParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmColorRemindParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmColorRemindParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmColorRemindParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmBatteryParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmBatteryParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmBatteryParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmBatteryParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmBatteryParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmBatteryParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmDialogWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmDialogWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmDialogWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmDialogWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmDialogWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmDialogWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmDialogWindowBackgroundParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmDialogWindowBackgroundParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmDialogWindowBackgroundParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmDialogWindowBackgroundParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x408

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmDialogWindowBackgroundParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->wmDialogWindowBackgroundParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/SuspessionParams;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
