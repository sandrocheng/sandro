.class final enum Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$WindowType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "WindowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$WindowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$WindowType;

.field public static final enum EOptimizeWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$WindowType;

.field public static final enum ESettingWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$WindowType;

.field public static final enum ETaskManagerWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$WindowType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$WindowType;

    const-string v1, "EOptimizeWindow"

    invoke-direct {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$WindowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$WindowType;->EOptimizeWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$WindowType;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$WindowType;

    const-string v1, "ESettingWindow"

    invoke-direct {v0, v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$WindowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$WindowType;->ESettingWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$WindowType;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$WindowType;

    const-string v1, "ETaskManagerWindow"

    invoke-direct {v0, v1, v4}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$WindowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$WindowType;->ETaskManagerWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$WindowType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$WindowType;

    sget-object v1, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$WindowType;->EOptimizeWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$WindowType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$WindowType;->ESettingWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$WindowType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$WindowType;->ETaskManagerWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$WindowType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$WindowType;->$VALUES:[Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$WindowType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$WindowType;
    .locals 1

    const-class v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$WindowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$WindowType;

    return-object v0
.end method

.method public static values()[Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$WindowType;
    .locals 1

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$WindowType;->$VALUES:[Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$WindowType;

    invoke-virtual {v0}, [Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$WindowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$WindowType;

    return-object v0
.end method
