.class final Lcom/htc/camera/component/cg;
.super Lcom/htc/camera/component/cn;
.source "SwitchCameraSlidingUIBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/cn",
        "<",
        "Lcom/htc/camera/component/SwitchCameraSlidingUI;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 10
    const-string v0, "Switch Camera Sliding"

    sget-object v1, Lcom/htc/camera/component/ComponentCategory;->Normal:Lcom/htc/camera/component/ComponentCategory;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/component/cn;-><init>(Ljava/lang/String;Lcom/htc/camera/component/ComponentCategory;)V

    .line 11
    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/SwitchCameraSlidingUI;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/htc/camera/component/SwitchCameraSlidingUI;

    invoke-direct {v0, p1}, Lcom/htc/camera/component/SwitchCameraSlidingUI;-><init>(Lcom/htc/camera/HTCCamera;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/htc/camera/component/cg;->a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/SwitchCameraSlidingUI;

    move-result-object v0

    return-object v0
.end method

.method protected isSupported(Lcom/htc/camera/HTCCamera;)Z
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    iget-boolean v0, v0, Lcom/htc/camera/CameraType;->isSupported:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    iget-boolean v0, v0, Lcom/htc/camera/CameraType;->isSupported:Z

    if-eqz v0, :cond_0

    .line 22
    const/4 v0, 0x1

    .line 24
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method