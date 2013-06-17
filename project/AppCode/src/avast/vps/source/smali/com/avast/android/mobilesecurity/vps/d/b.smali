.class public final enum Lcom/avast/android/mobilesecurity/vps/d/b;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/avast/android/mobilesecurity/vps/d/b;

.field public static final enum b:Lcom/avast/android/mobilesecurity/vps/d/b;

.field public static final enum c:Lcom/avast/android/mobilesecurity/vps/d/b;

.field public static final enum d:Lcom/avast/android/mobilesecurity/vps/d/b;

.field private static final e:Ljava/util/Map;

.field private static final synthetic g:[Lcom/avast/android/mobilesecurity/vps/d/b;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/d/b;

    const-string v1, "PRESCAN_IGNORE"

    invoke-direct {v0, v1, v2, v2}, Lcom/avast/android/mobilesecurity/vps/d/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/d/b;->a:Lcom/avast/android/mobilesecurity/vps/d/b;

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/d/b;

    const-string v1, "PRESCAN_FULL"

    invoke-direct {v0, v1, v3, v3}, Lcom/avast/android/mobilesecurity/vps/d/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/d/b;->b:Lcom/avast/android/mobilesecurity/vps/d/b;

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/d/b;

    const-string v1, "PRESCAN_UNPACK"

    invoke-direct {v0, v1, v4, v4}, Lcom/avast/android/mobilesecurity/vps/d/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/d/b;->c:Lcom/avast/android/mobilesecurity/vps/d/b;

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/d/b;

    const-string v1, "PRESCAN_UNPACK_DEX"

    invoke-direct {v0, v1, v5, v5}, Lcom/avast/android/mobilesecurity/vps/d/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/d/b;->d:Lcom/avast/android/mobilesecurity/vps/d/b;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/avast/android/mobilesecurity/vps/d/b;

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/d/b;->a:Lcom/avast/android/mobilesecurity/vps/d/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/d/b;->b:Lcom/avast/android/mobilesecurity/vps/d/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/d/b;->c:Lcom/avast/android/mobilesecurity/vps/d/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/d/b;->d:Lcom/avast/android/mobilesecurity/vps/d/b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/d/b;->g:[Lcom/avast/android/mobilesecurity/vps/d/b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/d/b;->e:Ljava/util/Map;

    const-class v0, Lcom/avast/android/mobilesecurity/vps/d/b;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/vps/d/b;

    sget-object v2, Lcom/avast/android/mobilesecurity/vps/d/b;->e:Ljava/util/Map;

    iget v3, v0, Lcom/avast/android/mobilesecurity/vps/d/b;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/avast/android/mobilesecurity/vps/d/b;->f:I

    return-void
.end method

.method public static a(I)Lcom/avast/android/mobilesecurity/vps/d/b;
    .locals 2

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/d/b;->e:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/vps/d/b;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/d/b;
    .locals 1

    const-class v0, Lcom/avast/android/mobilesecurity/vps/d/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/vps/d/b;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/mobilesecurity/vps/d/b;
    .locals 1

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/d/b;->g:[Lcom/avast/android/mobilesecurity/vps/d/b;

    invoke-virtual {v0}, [Lcom/avast/android/mobilesecurity/vps/d/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/mobilesecurity/vps/d/b;

    return-object v0
.end method
