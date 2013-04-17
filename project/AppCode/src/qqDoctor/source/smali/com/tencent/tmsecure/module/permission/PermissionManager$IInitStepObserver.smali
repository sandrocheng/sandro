.class public interface abstract Lcom/tencent/tmsecure/module/permission/PermissionManager$IInitStepObserver;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tmsecure/module/permission/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IInitStepObserver"
.end annotation


# static fields
.field public static final STEP_ASK_REBOOT:I = 0x2

.field public static final STEP_CHECK_HAD_REG:I = 0x3

.field public static final STEP_FINISH:I = 0x6

.field public static final STEP_GET_SERVICE_BINDER:I = 0x4

.field public static final STEP_HAD_BEEN_ROOT:I = 0x1

.field public static final STEP_IMPORT_DATA:I = 0x5

.field public static final STEP_OS_ARCH_CHECK:I


# virtual methods
.method public abstract onReached(IZ)Z
.end method
