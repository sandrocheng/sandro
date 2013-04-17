.class public final enum Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;

.field public static final enum IN:Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;

.field public static final enum INOUT:Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;

.field public static final enum OUT:Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;

    const-string v1, "IN"

    invoke-direct {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;->IN:Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;

    const-string v1, "OUT"

    invoke-direct {v0, v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;->OUT:Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;

    const-string v1, "INOUT"

    invoke-direct {v0, v1, v4}, Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;->INOUT:Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;

    sget-object v1, Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;->IN:Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;->OUT:Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;->INOUT:Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;->$VALUES:[Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;
    .locals 1

    const-class v0, Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;

    return-object v0
.end method

.method public static values()[Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;
    .locals 1

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;->$VALUES:[Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;

    invoke-virtual {v0}, [Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/qqpimsecure/uilib/view/desktop/EasingType$Type;

    return-object v0
.end method
