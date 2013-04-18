.class public interface abstract Landroid/content/pm/IPackageManager;
.super Ljava/lang/Object;
.source "IPackageManager.java"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract getApplicationEnabledSetting(Ljava/lang/String;)I
.end method

.method public abstract getComponentEnabledSetting(Landroid/content/ComponentName;)I
.end method

.method public abstract setApplicationEnabledSetting(Ljava/lang/String;II)V
.end method

.method public abstract setComponentEnabledSetting(Landroid/content/ComponentName;II)V
.end method

.method public abstract setPackageStoppedState(Ljava/lang/String;Z)V
.end method
